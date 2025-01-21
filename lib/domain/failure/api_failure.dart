import 'package:dart_mappable/dart_mappable.dart';

part 'api_failure.mapper.dart';

@MappableClass()
sealed class ApiFailure with ApiFailureMappable {
  static ApiFailure fromError(Object o, StackTrace _) {
    if (o is ApiFailure) return o;
    // TODO(jln): add mapping
    throw UnimplementedError();
  }
}

@MappableClass()
class NoDataFailure with NoDataFailureMappable implements ApiFailure {}

@MappableClass()
class PlayerExistsFailure
    with PlayerExistsFailureMappable
    implements ApiFailure {}

@MappableClass()
class PlayerNotFoundFailure
    with PlayerNotFoundFailureMappable
    implements ApiFailure {}

@MappableClass()
class LastEntryNotAllowedToBeRemovedFailure
    with LastEntryNotAllowedToBeRemovedFailureMappable
    implements ApiFailure {}

@MappableClass()
class NothingSelectedFailure
    with NothingSelectedFailureMappable
    implements ApiFailure {}
