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

final class PlayerSelect extends PlayerEvent {
  PlayerSelect(this.user);
  final User user;
}

final class PlayerCharacterToggle extends PlayerEvent {
  PlayerCharacterToggle(this.user, this.character);
  final User? user; // on null, the selectedPlayer will be taken
  final Character character;
}

typedef _Emitter = Emitter<PlayerState>;

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc({
    required this.fightId,
    required this.playerRepository,
    this.playerLimit,
    this.characterLimit,
    required this.defaultCharacter,
    List<FightPlayer> initialValue = const <FightPlayer>[],
  }) : super(PlayerState(player: initialValue)) {
    on<_PlayerInit>(_init);
    on<_PlayerDbUpdate>(_stateUpdate);
    on<PlayerAdd>(_addPlayer);
    on<PlayerRemove>(_removePlayer);
    on<PlayerSelect>(_selectPlayer);
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
      }, (players) {
        emit(state.copyWith(
          player: List.of(players),
          failure: null,
          isOptimisticUI: false,
        ));
      });

  Future<void> _addPlayer(PlayerAdd event, _Emitter emit) async {
    // if player exits, do nothing
    if (state.player.any((p) => p.user.id == event.user.id)) {
      emit(state.copyWith(failure: PlayerExistsFailure()));
      return;
    }
    final valueBackup = List.of(state.player);

    final newPlayer = FightPlayer(
        fightId: fightId, user: event.user, character: [defaultCharacter]);

    final limit = playerLimit;
    final listByLimit =
        limit != null ? (state.player..sort()).take(limit - 1) : state.player;
    final newList = {...listByLimit, newPlayer}.toList();

    emit(PlayerState(
        player: newList, isOptimisticUI: true, selectedPlayer: event.user));
    final eith = await playerRepository
        .addPlayer(fightId, newPlayer, limit: playerLimit)
        .run();

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(PlayerState(failure: failure, player: valueBackup));
    }
  }

  Future<void> _removePlayer(PlayerRemove event, _Emitter emit) async {
    // if player does not exits, do nothing
    if (state.player.none((p) => p.user.id == event.user.id)) {
      emit(state.copyWith(failure: PlayerNotFoundFailure()));
      return;
    }
    final valueBackup = List.of(state.player);

    final list = List.of(state.player)
      ..removeWhere((o) => o.user.id == event.user.id);
    final newList = list.take(playerLimit ?? list.length).toList();

    emit(state.copyWith(
        player: newList,
        isOptimisticUI: true,
        selectedPlayer:
            // also remove selected User
            newList.any((p) => p.user.id == state.selectedPlayer?.id)
                ? state.selectedPlayer
                : newList.firstOrNull?.user));
    final eith = await playerRepository
        .removePlayer(fightId, event.user, limit: playerLimit)
        .run();

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(state.copyWith(failure: failure, player: valueBackup));
    }
  }

  void _selectPlayer(PlayerSelect event, _Emitter emit) {
    if (state.player.none((p) => p.user.id == event.user.id)) {
      emit(state.copyWith(failure: PlayerNotFoundFailure()));
    } else {
      emit(state.copyWith(selectedPlayer: event.user));
    }
  }

  Future<void> _toggleCharacter(
      PlayerCharacterToggle event, _Emitter emit) async {
    final user = event.user ?? state.selectedPlayer;
    if (user == null) {
      emit(state.copyWith(failure: NothingSelectedFailure()));
      return;
    }

    final valueBackup = List.of(state.player);
    final idx = valueBackup.indexWhere((e) => e.user.id == user.id);
    final player = idx >= 0 ? valueBackup[idx] : null;
    final characterExists =
        player?.character.contains(event.character) ?? false;
    List<FightPlayer> newList = valueBackup;

    // Can not remove character if it is the last
    if (player?.character.length == 1 &&
        player?.character.firstOrNull == event.character) {
      emit(state.copyWith(failure: LastEntryNotAllowedToBeRemovedFailure()));
      return;
    }

    if (player != null) {
      List<Character> newCharacterList = [];
      if (characterExists) {
        // character exists and needs to be removed
        final list = List.of(player.character)
          ..removeWhere((o) => o == event.character);
        newCharacterList =
            (list..sort()).take(characterLimit ?? list.length).toList();
      } else {
        // character does not exists and needs to be added
        final limit = characterLimit;
        final listByLimit = limit != null
            ? (player.character..sort()).take(limit - 1)
            : player.character;
        newCharacterList = {...listByLimit, event.character}.toList();
      }

      newList[idx] = player.copyWith(character: newCharacterList);
    } else {
      newList.add(FightPlayer(
          fightId: fightId, user: user, character: [event.character]));
    }

    emit(state.copyWith(player: newList, isOptimisticUI: true));
    final eith = await (characterExists
        ? playerRepository
            .removeCharacter(fightId, user, event.character,
                limit: characterLimit)
            .run()
        : playerRepository
            .addCharacter(fightId, user, event.character, limit: characterLimit)
            .run());

    final failure = eith.getLeft().toNullable();
    if (failure != null) {
      emit(state.copyWith(failure: failure, player: valueBackup));
    }
  }
}
