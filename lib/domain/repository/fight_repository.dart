import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/domain/failure/api_failure.dart';
import 'package:gamevs_core/gamevs_core.dart' as core;
import 'package:uuid/uuid.dart';

abstract class IFightRepository {
  // Create
  TaskOption<ApiFailure> createFight(core.Fight fight);

  // Delete
  TaskOption<ApiFailure> deleteFight(UuidValue fightId);

  // Watch Simple
  TaskEither<ApiFailure, Stream<Either<ApiFailure, core.Settings>>>
      watchSettings(UuidValue fightId);
  TaskEither<ApiFailure, Stream<Either<ApiFailure, List<core.FightPlayer>>>>
      watchPlayers(UuidValue fightId);
  TaskEither<ApiFailure, Stream<Either<ApiFailure, List<core.Stage>>>>
      watchStages(UuidValue fightId);
  TaskEither<ApiFailure, Stream<Either<ApiFailure, List<core.FightKill>>>>
      watchKills(UuidValue fightId);
  TaskEither<ApiFailure, Stream<Either<ApiFailure, List<core.FightResult>>>>
      watchResults(UuidValue fightId);

  // Get Complex
  /*
  TaskEither<ApiFailure, List<core.FightResult>> resultsByFilter({
    List<core.FightPlayer> player,
    // TODO(jln): add real filter for (eg. created, )
  });
  */

  // Update
  TaskOption<ApiFailure> updateSettings(
      UuidValue fightId, core.Settings settings);
  TaskOption<ApiFailure> updatePlayers(
      UuidValue fightId, List<core.FightPlayer> players);
  TaskOption<ApiFailure> updateStages(
      UuidValue fightId, List<core.Stage> stages);
  TaskOption<ApiFailure> updateKills(
      UuidValue fightId, List<core.FightKill> kills);
  TaskOption<ApiFailure> updateResults(
      UuidValue fightId, List<core.FightResult> results);
}
