import 'package:dart_mappable/dart_mappable.dart';

part 'api_failure.mapper.dart';

@MappableClass()
sealed class ApiFailure with ApiFailureMappable {
  static ApiFailure fromError(Object o, StackTrace) {
    if (o is ApiFailure) return o;
    // TODO(jln): add mapping
    throw UnimplementedError();
  }
}

@MappableClass()
class NoDataFailure with NoDataFailureMappable implements ApiFailure {}

class PlayerExistsFailure with NoDataFailureMappable implements ApiFailure {}

class PlayerNotFoundFailure with NoDataFailureMappable implements ApiFailure {}
