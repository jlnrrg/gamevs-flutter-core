import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart';
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
  StageBloc({
    required this.fightId,
    required this.stageRepository,
    this.stageLimit,
    List<Stage> initialValue = const <Stage>[],
  }) : super(BlocState(value: initialValue)) {
    on<_StageInit>(_init);
    on<_StageDbUpdate>(_stateUpdate);
    on<StageToggle>(_toggle,
        transformer: debounce(Duration(milliseconds: 500)));
    on<StageClear>(_clear);

    add(_StageInit());
  }

  final UuidValue fightId;
  final int? stageLimit;
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
    final valueBackup = List.of(state.value);
    final exists = state.value.contains(event.stage);

    List<Stage<Enum>> newList = [];
    if (exists) {
      final list = List.of(state.value)..removeWhere((o) => o == event.stage);
      newList = list.take(stageLimit ?? list.length).toList();
    } else {
      final limit = stageLimit;
      final listByLimit =
          limit != null ? (state.value..sort()).take(limit - 1) : state.value;
      newList = {...listByLimit, event.stage}.toList();
    }
    emit(BlocState(value: newList, isOptimisticUI: true));
    final eith = await (exists
        ? stageRepository
            .removeStage(fightId, event.stage, limit: stageLimit)
            .run()
        : stageRepository
            .addStage(fightId, event.stage, limit: stageLimit)
            .run());

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      //debugPrint('Failure encountered: $failure');
      emit(BlocState(failure: failure, value: valueBackup));
    }
  }

  Future<void> _clear(StageClear _, _Emitter emit) async {
    final valueBackup = List.of(state.value);

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
