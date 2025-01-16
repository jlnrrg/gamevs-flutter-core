// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bloc_state.dart';

class BlocStateMapper extends ClassMapperBase<BlocState> {
  BlocStateMapper._();

  static BlocStateMapper? _instance;
  static BlocStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlocStateMapper._());
      ApiFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BlocState';
  @override
  Function get typeFactory => <T>(f) => f<BlocState<T>>();

  static dynamic _$value(BlocState v) => v.value;
  static dynamic _arg$value<T>(f) => f<T>();
  static const Field<BlocState, dynamic> _f$value =
      Field('value', _$value, arg: _arg$value);
  static bool _$isOptimisticUI(BlocState v) => v.isOptimisticUI;
  static const Field<BlocState, bool> _f$isOptimisticUI = Field(
      'isOptimisticUI', _$isOptimisticUI,
      key: 'isOptimisticUi', opt: true, def: false);
  static ApiFailure? _$failure(BlocState v) => v.failure;
  static const Field<BlocState, ApiFailure> _f$failure =
      Field('failure', _$failure, opt: true);

  @override
  final MappableFields<BlocState> fields = const {
    #value: _f$value,
    #isOptimisticUI: _f$isOptimisticUI,
    #failure: _f$failure,
  };

  static BlocState<T> _instantiate<T>(DecodingData data) {
    return BlocState(
        value: data.dec(_f$value),
        isOptimisticUI: data.dec(_f$isOptimisticUI),
        failure: data.dec(_f$failure));
  }

  @override
  final Function instantiate = _instantiate;

  static BlocState<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlocState<T>>(map);
  }

  static BlocState<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<BlocState<T>>(json);
  }
}

mixin BlocStateMappable<T> {
  String toJson() {
    return BlocStateMapper.ensureInitialized()
        .encodeJson<BlocState<T>>(this as BlocState<T>);
  }

  Map<String, dynamic> toMap() {
    return BlocStateMapper.ensureInitialized()
        .encodeMap<BlocState<T>>(this as BlocState<T>);
  }

  BlocStateCopyWith<BlocState<T>, BlocState<T>, BlocState<T>, T> get copyWith =>
      _BlocStateCopyWithImpl(this as BlocState<T>, $identity, $identity);
  @override
  String toString() {
    return BlocStateMapper.ensureInitialized()
        .stringifyValue(this as BlocState<T>);
  }
}

extension BlocStateValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, BlocState<T>, $Out> {
  BlocStateCopyWith<$R, BlocState<T>, $Out, T> get $asBlocState =>
      $base.as((v, t, t2) => _BlocStateCopyWithImpl(v, t, t2));
}

abstract class BlocStateCopyWith<$R, $In extends BlocState<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({T? value, bool? isOptimisticUI, ApiFailure? failure});
  BlocStateCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BlocStateCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, BlocState<T>, $Out>
    implements BlocStateCopyWith<$R, BlocState<T>, $Out, T> {
  _BlocStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlocState> $mapper =
      BlocStateMapper.ensureInitialized();
  @override
  $R call({T? value, bool? isOptimisticUI, Object? failure = $none}) =>
      $apply(FieldCopyWithData({
        if (value != null) #value: value,
        if (isOptimisticUI != null) #isOptimisticUI: isOptimisticUI,
        if (failure != $none) #failure: failure
      }));
  @override
  BlocState<T> $make(CopyWithData data) => BlocState(
      value: data.get(#value, or: $value.value),
      isOptimisticUI: data.get(#isOptimisticUI, or: $value.isOptimisticUI),
      failure: data.get(#failure, or: $value.failure));

  @override
  BlocStateCopyWith<$R2, BlocState<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BlocStateCopyWithImpl($value, $cast, t);
}
