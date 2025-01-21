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
      PlayerExistsFailureMapper.ensureInitialized();
      PlayerNotFoundFailureMapper.ensureInitialized();
      LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized();
      NothingSelectedFailureMapper.ensureInitialized();
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

class PlayerExistsFailureMapper
    extends SubClassMapperBase<PlayerExistsFailure> {
  PlayerExistsFailureMapper._();

  static PlayerExistsFailureMapper? _instance;
  static PlayerExistsFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerExistsFailureMapper._());
      ApiFailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerExistsFailure';

  @override
  final MappableFields<PlayerExistsFailure> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'PlayerExistsFailure';
  @override
  late final ClassMapperBase superMapper = ApiFailureMapper.ensureInitialized();

  static PlayerExistsFailure _instantiate(DecodingData data) {
    return PlayerExistsFailure();
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerExistsFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerExistsFailure>(map);
  }

  static PlayerExistsFailure fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerExistsFailure>(json);
  }
}

mixin PlayerExistsFailureMappable {
  String toJson() {
    return PlayerExistsFailureMapper.ensureInitialized()
        .encodeJson<PlayerExistsFailure>(this as PlayerExistsFailure);
  }

  Map<String, dynamic> toMap() {
    return PlayerExistsFailureMapper.ensureInitialized()
        .encodeMap<PlayerExistsFailure>(this as PlayerExistsFailure);
  }

  PlayerExistsFailureCopyWith<PlayerExistsFailure, PlayerExistsFailure,
          PlayerExistsFailure>
      get copyWith => _PlayerExistsFailureCopyWithImpl(
          this as PlayerExistsFailure, $identity, $identity);
  @override
  String toString() {
    return PlayerExistsFailureMapper.ensureInitialized()
        .stringifyValue(this as PlayerExistsFailure);
  }

  @override
  bool operator ==(Object other) {
    return PlayerExistsFailureMapper.ensureInitialized()
        .equalsValue(this as PlayerExistsFailure, other);
  }

  @override
  int get hashCode {
    return PlayerExistsFailureMapper.ensureInitialized()
        .hashValue(this as PlayerExistsFailure);
  }
}

extension PlayerExistsFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerExistsFailure, $Out> {
  PlayerExistsFailureCopyWith<$R, PlayerExistsFailure, $Out>
      get $asPlayerExistsFailure =>
          $base.as((v, t, t2) => _PlayerExistsFailureCopyWithImpl(v, t, t2));
}

abstract class PlayerExistsFailureCopyWith<$R, $In extends PlayerExistsFailure,
    $Out> implements ApiFailureCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PlayerExistsFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayerExistsFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerExistsFailure, $Out>
    implements PlayerExistsFailureCopyWith<$R, PlayerExistsFailure, $Out> {
  _PlayerExistsFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerExistsFailure> $mapper =
      PlayerExistsFailureMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PlayerExistsFailure $make(CopyWithData data) => PlayerExistsFailure();

  @override
  PlayerExistsFailureCopyWith<$R2, PlayerExistsFailure, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlayerExistsFailureCopyWithImpl($value, $cast, t);
}

class PlayerNotFoundFailureMapper
    extends SubClassMapperBase<PlayerNotFoundFailure> {
  PlayerNotFoundFailureMapper._();

  static PlayerNotFoundFailureMapper? _instance;
  static PlayerNotFoundFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerNotFoundFailureMapper._());
      ApiFailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerNotFoundFailure';

  @override
  final MappableFields<PlayerNotFoundFailure> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'PlayerNotFoundFailure';
  @override
  late final ClassMapperBase superMapper = ApiFailureMapper.ensureInitialized();

  static PlayerNotFoundFailure _instantiate(DecodingData data) {
    return PlayerNotFoundFailure();
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerNotFoundFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerNotFoundFailure>(map);
  }

  static PlayerNotFoundFailure fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerNotFoundFailure>(json);
  }
}

mixin PlayerNotFoundFailureMappable {
  String toJson() {
    return PlayerNotFoundFailureMapper.ensureInitialized()
        .encodeJson<PlayerNotFoundFailure>(this as PlayerNotFoundFailure);
  }

  Map<String, dynamic> toMap() {
    return PlayerNotFoundFailureMapper.ensureInitialized()
        .encodeMap<PlayerNotFoundFailure>(this as PlayerNotFoundFailure);
  }

  PlayerNotFoundFailureCopyWith<PlayerNotFoundFailure, PlayerNotFoundFailure,
          PlayerNotFoundFailure>
      get copyWith => _PlayerNotFoundFailureCopyWithImpl(
          this as PlayerNotFoundFailure, $identity, $identity);
  @override
  String toString() {
    return PlayerNotFoundFailureMapper.ensureInitialized()
        .stringifyValue(this as PlayerNotFoundFailure);
  }

  @override
  bool operator ==(Object other) {
    return PlayerNotFoundFailureMapper.ensureInitialized()
        .equalsValue(this as PlayerNotFoundFailure, other);
  }

  @override
  int get hashCode {
    return PlayerNotFoundFailureMapper.ensureInitialized()
        .hashValue(this as PlayerNotFoundFailure);
  }
}

extension PlayerNotFoundFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerNotFoundFailure, $Out> {
  PlayerNotFoundFailureCopyWith<$R, PlayerNotFoundFailure, $Out>
      get $asPlayerNotFoundFailure =>
          $base.as((v, t, t2) => _PlayerNotFoundFailureCopyWithImpl(v, t, t2));
}

abstract class PlayerNotFoundFailureCopyWith<
    $R,
    $In extends PlayerNotFoundFailure,
    $Out> implements ApiFailureCopyWith<$R, $In, $Out> {
  @override
  $R call();
  PlayerNotFoundFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlayerNotFoundFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerNotFoundFailure, $Out>
    implements PlayerNotFoundFailureCopyWith<$R, PlayerNotFoundFailure, $Out> {
  _PlayerNotFoundFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerNotFoundFailure> $mapper =
      PlayerNotFoundFailureMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  PlayerNotFoundFailure $make(CopyWithData data) => PlayerNotFoundFailure();

  @override
  PlayerNotFoundFailureCopyWith<$R2, PlayerNotFoundFailure, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlayerNotFoundFailureCopyWithImpl($value, $cast, t);
}

class LastEntryNotAllowedToBeRemovedFailureMapper
    extends SubClassMapperBase<LastEntryNotAllowedToBeRemovedFailure> {
  LastEntryNotAllowedToBeRemovedFailureMapper._();

  static LastEntryNotAllowedToBeRemovedFailureMapper? _instance;
  static LastEntryNotAllowedToBeRemovedFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = LastEntryNotAllowedToBeRemovedFailureMapper._());
      ApiFailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'LastEntryNotAllowedToBeRemovedFailure';

  @override
  final MappableFields<LastEntryNotAllowedToBeRemovedFailure> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'LastEntryNotAllowedToBeRemovedFailure';
  @override
  late final ClassMapperBase superMapper = ApiFailureMapper.ensureInitialized();

  static LastEntryNotAllowedToBeRemovedFailure _instantiate(DecodingData data) {
    return LastEntryNotAllowedToBeRemovedFailure();
  }

  @override
  final Function instantiate = _instantiate;

  static LastEntryNotAllowedToBeRemovedFailure fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<LastEntryNotAllowedToBeRemovedFailure>(map);
  }

  static LastEntryNotAllowedToBeRemovedFailure fromJson(String json) {
    return ensureInitialized()
        .decodeJson<LastEntryNotAllowedToBeRemovedFailure>(json);
  }
}

mixin LastEntryNotAllowedToBeRemovedFailureMappable {
  String toJson() {
    return LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized()
        .encodeJson<LastEntryNotAllowedToBeRemovedFailure>(
            this as LastEntryNotAllowedToBeRemovedFailure);
  }

  Map<String, dynamic> toMap() {
    return LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized()
        .encodeMap<LastEntryNotAllowedToBeRemovedFailure>(
            this as LastEntryNotAllowedToBeRemovedFailure);
  }

  LastEntryNotAllowedToBeRemovedFailureCopyWith<
          LastEntryNotAllowedToBeRemovedFailure,
          LastEntryNotAllowedToBeRemovedFailure,
          LastEntryNotAllowedToBeRemovedFailure>
      get copyWith => _LastEntryNotAllowedToBeRemovedFailureCopyWithImpl(
          this as LastEntryNotAllowedToBeRemovedFailure, $identity, $identity);
  @override
  String toString() {
    return LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized()
        .stringifyValue(this as LastEntryNotAllowedToBeRemovedFailure);
  }

  @override
  bool operator ==(Object other) {
    return LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized()
        .equalsValue(this as LastEntryNotAllowedToBeRemovedFailure, other);
  }

  @override
  int get hashCode {
    return LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized()
        .hashValue(this as LastEntryNotAllowedToBeRemovedFailure);
  }
}

extension LastEntryNotAllowedToBeRemovedFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LastEntryNotAllowedToBeRemovedFailure, $Out> {
  LastEntryNotAllowedToBeRemovedFailureCopyWith<$R,
          LastEntryNotAllowedToBeRemovedFailure, $Out>
      get $asLastEntryNotAllowedToBeRemovedFailure => $base.as((v, t, t2) =>
          _LastEntryNotAllowedToBeRemovedFailureCopyWithImpl(v, t, t2));
}

abstract class LastEntryNotAllowedToBeRemovedFailureCopyWith<
    $R,
    $In extends LastEntryNotAllowedToBeRemovedFailure,
    $Out> implements ApiFailureCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LastEntryNotAllowedToBeRemovedFailureCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LastEntryNotAllowedToBeRemovedFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LastEntryNotAllowedToBeRemovedFailure, $Out>
    implements
        LastEntryNotAllowedToBeRemovedFailureCopyWith<$R,
            LastEntryNotAllowedToBeRemovedFailure, $Out> {
  _LastEntryNotAllowedToBeRemovedFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LastEntryNotAllowedToBeRemovedFailure> $mapper =
      LastEntryNotAllowedToBeRemovedFailureMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LastEntryNotAllowedToBeRemovedFailure $make(CopyWithData data) =>
      LastEntryNotAllowedToBeRemovedFailure();

  @override
  LastEntryNotAllowedToBeRemovedFailureCopyWith<$R2,
      LastEntryNotAllowedToBeRemovedFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LastEntryNotAllowedToBeRemovedFailureCopyWithImpl($value, $cast, t);
}

class NothingSelectedFailureMapper
    extends SubClassMapperBase<NothingSelectedFailure> {
  NothingSelectedFailureMapper._();

  static NothingSelectedFailureMapper? _instance;
  static NothingSelectedFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NothingSelectedFailureMapper._());
      ApiFailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NothingSelectedFailure';

  @override
  final MappableFields<NothingSelectedFailure> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'NothingSelectedFailure';
  @override
  late final ClassMapperBase superMapper = ApiFailureMapper.ensureInitialized();

  static NothingSelectedFailure _instantiate(DecodingData data) {
    return NothingSelectedFailure();
  }

  @override
  final Function instantiate = _instantiate;

  static NothingSelectedFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NothingSelectedFailure>(map);
  }

  static NothingSelectedFailure fromJson(String json) {
    return ensureInitialized().decodeJson<NothingSelectedFailure>(json);
  }
}

mixin NothingSelectedFailureMappable {
  String toJson() {
    return NothingSelectedFailureMapper.ensureInitialized()
        .encodeJson<NothingSelectedFailure>(this as NothingSelectedFailure);
  }

  Map<String, dynamic> toMap() {
    return NothingSelectedFailureMapper.ensureInitialized()
        .encodeMap<NothingSelectedFailure>(this as NothingSelectedFailure);
  }

  NothingSelectedFailureCopyWith<NothingSelectedFailure, NothingSelectedFailure,
          NothingSelectedFailure>
      get copyWith => _NothingSelectedFailureCopyWithImpl(
          this as NothingSelectedFailure, $identity, $identity);
  @override
  String toString() {
    return NothingSelectedFailureMapper.ensureInitialized()
        .stringifyValue(this as NothingSelectedFailure);
  }

  @override
  bool operator ==(Object other) {
    return NothingSelectedFailureMapper.ensureInitialized()
        .equalsValue(this as NothingSelectedFailure, other);
  }

  @override
  int get hashCode {
    return NothingSelectedFailureMapper.ensureInitialized()
        .hashValue(this as NothingSelectedFailure);
  }
}

extension NothingSelectedFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NothingSelectedFailure, $Out> {
  NothingSelectedFailureCopyWith<$R, NothingSelectedFailure, $Out>
      get $asNothingSelectedFailure =>
          $base.as((v, t, t2) => _NothingSelectedFailureCopyWithImpl(v, t, t2));
}

abstract class NothingSelectedFailureCopyWith<
    $R,
    $In extends NothingSelectedFailure,
    $Out> implements ApiFailureCopyWith<$R, $In, $Out> {
  @override
  $R call();
  NothingSelectedFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NothingSelectedFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NothingSelectedFailure, $Out>
    implements
        NothingSelectedFailureCopyWith<$R, NothingSelectedFailure, $Out> {
  _NothingSelectedFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NothingSelectedFailure> $mapper =
      NothingSelectedFailureMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  NothingSelectedFailure $make(CopyWithData data) => NothingSelectedFailure();

  @override
  NothingSelectedFailureCopyWith<$R2, NothingSelectedFailure, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _NothingSelectedFailureCopyWithImpl($value, $cast, t);
}
