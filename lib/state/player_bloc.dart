import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart';
import 'package:uuid/uuid.dart';

sealed class PlayerEvent {}

final class _PlayerInit extends PlayerEvent {}

final class _PlayerDbUpdate extends PlayerEvent {
  _PlayerDbUpdate(this.value);
  final Either<ApiFailure, List<FightPlayer>> value;
}

final class PlayerAdd extends PlayerEvent {
  PlayerAdd(this.user);
  final User user;
}

final class PlayerRemove extends PlayerEvent {
  PlayerRemove(this.user);
  final User user;
}

final class PlayerCharacterToggle extends PlayerEvent {
  PlayerCharacterToggle(this.user, this.character);
  final User user;
  final Character character;
}

typedef _Emitter = Emitter<BlocState<List<FightPlayer>>>;

class PlayerBloc extends Bloc<PlayerEvent, BlocState<List<FightPlayer>>> {
  PlayerBloc({
    required this.fightId,
    required this.playerRepository,
    this.playerLimit,
    this.characterLimit,
    required this.defaultCharacter,
    List<FightPlayer> initialValue = const <FightPlayer>[],
  }) : super(BlocState(value: initialValue)) {
    on<_PlayerInit>(_init);
    on<_PlayerDbUpdate>(_stateUpdate);
    on<PlayerAdd>(_addPlayer);
    on<PlayerRemove>(_removePlayer);
    on<PlayerCharacterToggle>(_toggleCharacter);

    add(_PlayerInit());
  }

  final UuidValue fightId;
  final int? playerLimit;
  final int? characterLimit;
  final Character defaultCharacter;
  final IPlayerRepository playerRepository;
  StreamSubscription? playerStreamSubscription;

  Future<void> _init(_PlayerInit _, _Emitter emit) async {
    final eith = await playerRepository.watchPlayers(fightId).run();
    eith.fold((f) => emit(state.copyWith(failure: f, isOptimisticUI: false)),
        (s) {
      playerStreamSubscription = s.listen((eith) => add(_PlayerDbUpdate(eith)));
    });
  }

  void _stateUpdate(_PlayerDbUpdate event, _Emitter emit) =>
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

  Future<void> _addPlayer(PlayerAdd event, _Emitter emit) async {
    // if player exits, do nothing
    if (state.value.any((p) => p.user.id == event.user.id)) {
      emit(state.copyWith(failure: PlayerExistsFailure()));
      return;
    }
    final valueBackup = List.of(state.value);

    final newPlayer = FightPlayer(
        fightId: fightId, user: event.user, character: [defaultCharacter]);

    final limit = playerLimit;
    final listByLimit =
        limit != null ? (state.value..sort()).take(limit - 1) : state.value;
    final newList = {...listByLimit, newPlayer}.toList();

    emit(BlocState(value: newList, isOptimisticUI: true));
    final eith = await playerRepository
        .addPlayer(fightId, newPlayer, limit: playerLimit)
        .run();

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(BlocState(failure: failure, value: valueBackup));
    }
  }

  Future<void> _removePlayer(PlayerRemove event, _Emitter emit) async {
    // if player does not exits, do nothing
    if (state.value.none((p) => p.user.id == event.user.id)) {
      emit(state.copyWith(failure: PlayerNotFoundFailure()));
      return;
    }
    final valueBackup = List.of(state.value);

    final list = List.of(state.value)
      ..removeWhere((o) => o.user.id == event.user.id);
    final newList = list.take(playerLimit ?? list.length).toList();

    emit(BlocState(value: newList, isOptimisticUI: true));
    final eith = await playerRepository
        .removePlayer(fightId, event.user, limit: playerLimit)
        .run();

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(BlocState(failure: failure, value: valueBackup));
    }
  }

  Future<void> _toggleCharacter(
      PlayerCharacterToggle event, _Emitter emit) async {
    // TODO(jln): add logic
  }
}
