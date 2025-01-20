import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/domain/failure/api_failure.dart';
import 'package:gamevs_core/gamevs_core.dart' as core;
import 'package:uuid/uuid.dart';

abstract interface class IFightRepository {
  // Create
  TaskEither<ApiFailure, Unit> createFight(core.Fight fight);

  // Delete
  TaskEither<ApiFailure, Unit> deleteFight(UuidValue fightId);

  // Watch Simple
  TaskEither<ApiFailure, Stream<Either<ApiFailure, core.Rules>>> watchRules(
      UuidValue fightId);
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
  TaskEither<ApiFailure, Unit> updateRules(UuidValue fightId, core.Rules rules);
  TaskEither<ApiFailure, Unit> updateKills(
      UuidValue fightId, List<core.FightKill> kills);
  TaskEither<ApiFailure, Unit> updateResults(
      UuidValue fightId, List<core.FightResult> results);
}
