import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart' as core;
import 'package:uuid/uuid.dart';

abstract class IRulesRepository {
  TaskEither<core.ApiFailure, Stream<Either<core.ApiFailure, core.Rules>>>
      watchRules(UuidValue fightId);

  TaskEither<core.ApiFailure, Unit> updateRules(
      UuidValue fightId, core.Rules rules);
}
