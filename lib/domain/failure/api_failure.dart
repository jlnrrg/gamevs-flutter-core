sealed class ApiFailure {
  static ApiFailure fromError(Object, StackTrace) {
    throw UnimplementedError();
  }
}

class NoDataFailure implements ApiFailure {}
