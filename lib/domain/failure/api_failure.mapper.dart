// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_failure.dart';

class ApiFailureMapper extends ClassMapperBase<ApiFailure> {
  ApiFailureMapper._();

  static ApiFailureMapper? _instance;
  static ApiFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiFailureMapper._());
      NoDataFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiFailure';

  @override
  final MappableFields<ApiFailure> fields = const {};

  static ApiFailure _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ApiFailure', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ApiFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiFailure>(map);
  }

  static ApiFailure fromJson(String json) {
    return ensureInitialized().decodeJson<ApiFailure>(json);
  }
}

mixin ApiFailureMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ApiFailureCopyWith<ApiFailure, ApiFailure, ApiFailure> get copyWith;
}

abstract class ApiFailureCopyWith<$R, $In extends ApiFailure, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ApiFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class NoDataFailureMapper extends SubClassMapperBase<NoDataFailure> {
  NoDataFailureMapper._();

  static NoDataFailureMapper? _instance;
  static NoDataFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoDataFailureMapper._());
      ApiFailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoDataFailure';

  @override
  final MappableFields<NoDataFailure> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'NoDataFailure';
  @override
  late final ClassMapperBase superMapper = ApiFailureMapper.ensureInitialized();

  static NoDataFailure _instantiate(DecodingData data) {
    return NoDataFailure();
  }

  @override
  final Function instantiate = _instantiate;

  static NoDataFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoDataFailure>(map);
  }

  static NoDataFailure fromJson(String json) {
    return ensureInitialized().decodeJson<NoDataFailure>(json);
  }
}

mixin NoDataFailureMappable {
  String toJson() {
    return NoDataFailureMapper.ensureInitialized()
        .encodeJson<NoDataFailure>(this as NoDataFailure);
  }

  Map<String, dynamic> toMap() {
    return NoDataFailureMapper.ensureInitialized()
        .encodeMap<NoDataFailure>(this as NoDataFailure);
  }

  NoDataFailureCopyWith<NoDataFailure, NoDataFailure, NoDataFailure>
      get copyWith => _NoDataFailureCopyWithImpl(
          this as NoDataFailure, $identity, $identity);
  @override
  String toString() {
    return NoDataFailureMapper.ensureInitialized()
        .stringifyValue(this as NoDataFailure);
  }

  @override
  bool operator ==(Object other) {
    return NoDataFailureMapper.ensureInitialized()
        .equalsValue(this as NoDataFailure, other);
  }

  @override
  int get hashCode {
    return NoDataFailureMapper.ensureInitialized()
        .hashValue(this as NoDataFailure);
  }
}

extension NoDataFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoDataFailure, $Out> {
  NoDataFailureCopyWith<$R, NoDataFailure, $Out> get $asNoDataFailure =>
      $base.as((v, t, t2) => _NoDataFailureCopyWithImpl(v, t, t2));
}

abstract class NoDataFailureCopyWith<$R, $In extends NoDataFailure, $Out>
    implements ApiFailureCopyWith<$R, $In, $Out> {
  @override
  $R call();
  NoDataFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoDataFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoDataFailure, $Out>
    implements NoDataFailureCopyWith<$R, NoDataFailure, $Out> {
  _NoDataFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoDataFailure> $mapper =
      NoDataFailureMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  NoDataFailure $make(CopyWithData data) => NoDataFailure();

  @override
  NoDataFailureCopyWith<$R2, NoDataFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoDataFailureCopyWithImpl($value, $cast, t);
}
