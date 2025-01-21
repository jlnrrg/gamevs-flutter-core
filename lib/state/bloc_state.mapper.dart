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

class PlayerStateMapper extends ClassMapperBase<PlayerState> {
  PlayerStateMapper._();

  static PlayerStateMapper? _instance;
  static PlayerStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayerStateMapper._());
      FightPlayerMapper.ensureInitialized();
      ApiFailureMapper.ensureInitialized();
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlayerState';

  static List<FightPlayer> _$player(PlayerState v) => v.player;
  static const Field<PlayerState, List<FightPlayer>> _f$player =
      Field('player', _$player);
  static bool _$isOptimisticUI(PlayerState v) => v.isOptimisticUI;
  static const Field<PlayerState, bool> _f$isOptimisticUI = Field(
      'isOptimisticUI', _$isOptimisticUI,
      key: 'isOptimisticUi', opt: true, def: false);
  static ApiFailure? _$failure(PlayerState v) => v.failure;
  static const Field<PlayerState, ApiFailure> _f$failure =
      Field('failure', _$failure, opt: true);
  static User? _$selectedPlayer(PlayerState v) => v.selectedPlayer;
  static const Field<PlayerState, User> _f$selectedPlayer =
      Field('selectedPlayer', _$selectedPlayer, opt: true);

  @override
  final MappableFields<PlayerState> fields = const {
    #player: _f$player,
    #isOptimisticUI: _f$isOptimisticUI,
    #failure: _f$failure,
    #selectedPlayer: _f$selectedPlayer,
  };

  static PlayerState _instantiate(DecodingData data) {
    return PlayerState(
        player: data.dec(_f$player),
        isOptimisticUI: data.dec(_f$isOptimisticUI),
        failure: data.dec(_f$failure),
        selectedPlayer: data.dec(_f$selectedPlayer));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayerState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayerState>(map);
  }

  static PlayerState fromJson(String json) {
    return ensureInitialized().decodeJson<PlayerState>(json);
  }
}

mixin PlayerStateMappable {
  String toJson() {
    return PlayerStateMapper.ensureInitialized()
        .encodeJson<PlayerState>(this as PlayerState);
  }

  Map<String, dynamic> toMap() {
    return PlayerStateMapper.ensureInitialized()
        .encodeMap<PlayerState>(this as PlayerState);
  }

  PlayerStateCopyWith<PlayerState, PlayerState, PlayerState> get copyWith =>
      _PlayerStateCopyWithImpl(this as PlayerState, $identity, $identity);
  @override
  String toString() {
    return PlayerStateMapper.ensureInitialized()
        .stringifyValue(this as PlayerState);
  }
}

extension PlayerStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlayerState, $Out> {
  PlayerStateCopyWith<$R, PlayerState, $Out> get $asPlayerState =>
      $base.as((v, t, t2) => _PlayerStateCopyWithImpl(v, t, t2));
}

abstract class PlayerStateCopyWith<$R, $In extends PlayerState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FightPlayer,
      FightPlayerCopyWith<$R, FightPlayer, FightPlayer>> get player;
  UserCopyWith<$R, User, User>? get selectedPlayer;
  $R call(
      {List<FightPlayer>? player,
      bool? isOptimisticUI,
      ApiFailure? failure,
      User? selectedPlayer});
  PlayerStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayerStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayerState, $Out>
    implements PlayerStateCopyWith<$R, PlayerState, $Out> {
  _PlayerStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayerState> $mapper =
      PlayerStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FightPlayer,
          FightPlayerCopyWith<$R, FightPlayer, FightPlayer>>
      get player => ListCopyWith($value.player, (v, t) => v.copyWith.$chain(t),
          (v) => call(player: v));
  @override
  UserCopyWith<$R, User, User>? get selectedPlayer =>
      $value.selectedPlayer?.copyWith.$chain((v) => call(selectedPlayer: v));
  @override
  $R call(
          {List<FightPlayer>? player,
          bool? isOptimisticUI,
          Object? failure = $none,
          Object? selectedPlayer = $none}) =>
      $apply(FieldCopyWithData({
        if (player != null) #player: player,
        if (isOptimisticUI != null) #isOptimisticUI: isOptimisticUI,
        if (failure != $none) #failure: failure,
        if (selectedPlayer != $none) #selectedPlayer: selectedPlayer
      }));
  @override
  PlayerState $make(CopyWithData data) => PlayerState(
      player: data.get(#player, or: $value.player),
      isOptimisticUI: data.get(#isOptimisticUI, or: $value.isOptimisticUI),
      failure: data.get(#failure, or: $value.failure),
      selectedPlayer: data.get(#selectedPlayer, or: $value.selectedPlayer));

  @override
  PlayerStateCopyWith<$R2, PlayerState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlayerStateCopyWithImpl($value, $cast, t);
}
