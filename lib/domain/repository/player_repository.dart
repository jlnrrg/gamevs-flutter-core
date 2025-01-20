import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart' as core;
import 'package:uuid/uuid.dart';

abstract interface class IPlayerRepository {
  TaskEither<core.ApiFailure,
          Stream<Either<core.ApiFailure, List<core.FightPlayer>>>>
      watchPlayers(UuidValue fightId);

  TaskEither<core.ApiFailure, Unit> updatePlayers(
      UuidValue fightId, List<core.FightPlayer> players);

  TaskEither<core.ApiFailure, Unit> addPlayer(
    UuidValue fightId,
    core.FightPlayer player, {
    required int? limit,
  });

  TaskEither<core.ApiFailure, Unit> removePlayer(
    UuidValue fightId,
    core.User user, {
    required int? limit,
  });

  TaskEither<core.ApiFailure, Unit> addCharacter(
    UuidValue fightId,
    core.User user,
    core.Character character, {
    required int? limit,
  });

  TaskEither<core.ApiFailure, Unit> removeCharacter(
    UuidValue fightId,
    core.User user,
    core.Character character, {
    required int? limit,
  });
}
