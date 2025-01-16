import 'package:fpdart/fpdart.dart';
import 'package:gamevs_core/gamevs_core.dart' as core;
import 'package:uuid/uuid.dart';

abstract class IStageRepository {
  TaskEither<core.ApiFailure, Stream<Either<core.ApiFailure, List<core.Stage>>>>
      watchStages(UuidValue fightId);

  TaskEither<core.ApiFailure, Unit> updateStages(
      UuidValue fightId, List<core.Stage> stages);

  TaskEither<core.ApiFailure, Unit> addStage(
      UuidValue fightId, core.Stage stage);

  TaskEither<core.ApiFailure, Unit> removeStage(
      UuidValue fightId, core.Stage stage);
}
