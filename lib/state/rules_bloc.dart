import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/domain/entity/rules.dart';
import 'package:gamevs_core/domain/failure/api_failure.dart';
import 'package:gamevs_core/domain/repository/rules_repository.dart';
import 'package:gamevs_core/state/bloc_state.dart';
import 'package:uuid/uuid.dart';

sealed class RulesEvent {}

final class _RulesInit extends RulesEvent {}

final class _RulesDbUpdate extends RulesEvent {
  _RulesDbUpdate(this.value);
  final Either<ApiFailure, Rules> value;
}

typedef _Emitter = Emitter<BlocState<Rules>>;

class RulesBloc extends Bloc<RulesEvent, BlocState<Rules>> {
  RulesBloc({
    required this.fightId,
    required this.rulesRepository,
    required Rules initialValue,
  }) : super(BlocState(value: initialValue)) {
    on<_RulesInit>(_init);
    on<_RulesDbUpdate>(_stateUpdate);
    add(_RulesInit());
  }

  final UuidValue fightId;
  final IRulesRepository rulesRepository;
  StreamSubscription? streamSubscription;

  Future<void> _init(_RulesInit _, _Emitter emit) async {
    final eith = await rulesRepository.watchRules(fightId).run();
    eith.fold((f) => emit(state.copyWith(failure: f, isOptimisticUI: false)),
        (s) {
      streamSubscription = s.listen((eith) => add(_RulesDbUpdate(eith)));
    });
  }

  void _stateUpdate(_RulesDbUpdate event, _Emitter emit) =>
      event.value.fold((f) {
        //debugPrint('Watch Failure encountered: $f');
        emit(state.copyWith(failure: f, isOptimisticUI: false));
      }, (rules) {
        emit(BlocState(
          value: rules,
          failure: null,
          isOptimisticUI: false,
        ));
      });

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
