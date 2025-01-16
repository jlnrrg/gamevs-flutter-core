import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart';
import 'package:gamevs_core/state/bloc_utils.dart';
import 'package:uuid/uuid.dart';

sealed class StageEvent {}

final class _StageInit extends StageEvent {}

final class _StageDbUpdate extends StageEvent {
  _StageDbUpdate(this.value);
  final Either<ApiFailure, List<Stage<Enum>>> value;
}

final class StageToggle extends StageEvent {
  StageToggle(this.stage);
  final Stage stage;
}

final class StageClear extends StageEvent {}

typedef _Emitter = Emitter<BlocState<List<Stage<Enum>>>>;

class StageBloc extends Bloc<StageEvent, BlocState<List<Stage>>> {
  StageBloc({required this.fightId, required this.stageRepository})
      : super(BlocState(value: <Stage>[])) {
    on<_StageInit>(_init);
    on<_StageDbUpdate>(_stateUpdate);
    on<StageToggle>(_toggle,
        transformer: debounce(Duration(milliseconds: 500)));
    on<StageClear>(_clear);

    add(_StageInit());
  }

  final UuidValue fightId;
  final IStageRepository stageRepository;
  StreamSubscription? stageStreamSubscription;

  Future<void> _init(_StageInit _, _Emitter emit) async {
    final eith = await stageRepository.watchStages(fightId).run();
    eith.fold((f) => emit(state.copyWith(failure: f, isOptimisticUI: false)),
        (s) {
      stageStreamSubscription = s.listen((eith) => add(_StageDbUpdate(eith)));
    });
  }

  void _stateUpdate(_StageDbUpdate event, _Emitter emit) =>
      event.value.fold((f) {
        //debugPrint('Watch Failure encountered: $f');
        emit(state.copyWith(failure: f, isOptimisticUI: false));
      }, (stages) {
        emit(BlocState(
          value: List.of(stages),
          failure: null,
          isOptimisticUI: false,
        ));
      });

  Future<void> _toggle(StageToggle event, _Emitter emit) async {
    final valueBackup = state.value;
    final exists = state.value.contains(event.stage);

    final newList = exists
        ? (List.of(state.value)..removeWhere((o) => o == event.stage))
        : {...state.value, event.stage}.toList();
    emit(BlocState(value: newList, isOptimisticUI: true));
    final eith = await (exists
        ? stageRepository.removeStage(fightId, event.stage).run()
        : stageRepository.addStage(fightId, event.stage).run());

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      //debugPrint('Failure encountered: $failure');
      emit(BlocState(failure: failure, value: valueBackup));
    }
  }

  Future<void> _clear(StageClear _, _Emitter emit) async {
    final valueBackup = state.value;
    emit(BlocState(value: [], isOptimisticUI: true));
    final eith = await stageRepository.updateStages(fightId, []).run();
    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(BlocState(failure: failure, value: valueBackup));
    }
  }

  @override
  Future<void> close() async {
    await stageStreamSubscription?.cancel();
    return super.close();
  }
}
