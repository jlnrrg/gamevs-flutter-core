// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'fight.dart';

class FightMapper extends ClassMapperBase<Fight> {
  FightMapper._();

  static FightMapper? _instance;
  static FightMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FightMapper._());
      GameMapper.ensureInitialized();
      RulesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Fight';

  static UuidValue _$id(Fight v) => v.id;
  static const Field<Fight, UuidValue> _f$id = Field('id', _$id);
  static Game _$game(Fight v) => v.game;
  static const Field<Fight, Game> _f$game = Field('game', _$game);
  static Rules _$rules(Fight v) => v.rules;
  static const Field<Fight, Rules> _f$rules = Field('rules', _$rules);
  static DateTime _$createdAt(Fight v) => v.createdAt;
  static const Field<Fight, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(Fight v) => v.updatedAt;
  static const Field<Fight, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<Fight> fields = const {
    #id: _f$id,
    #game: _f$game,
    #rules: _f$rules,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static Fight _instantiate(DecodingData data) {
    return Fight(
        id: data.dec(_f$id),
        game: data.dec(_f$game),
        rules: data.dec(_f$rules),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Fight fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Fight>(map);
  }

  static Fight fromJson(String json) {
    return ensureInitialized().decodeJson<Fight>(json);
  }
}

mixin FightMappable {
  String toJson() {
    return FightMapper.ensureInitialized().encodeJson<Fight>(this as Fight);
  }

  Map<String, dynamic> toMap() {
    return FightMapper.ensureInitialized().encodeMap<Fight>(this as Fight);
  }

  FightCopyWith<Fight, Fight, Fight> get copyWith =>
      _FightCopyWithImpl(this as Fight, $identity, $identity);
  @override
  String toString() {
    return FightMapper.ensureInitialized().stringifyValue(this as Fight);
  }
}

extension FightValueCopy<$R, $Out> on ObjectCopyWith<$R, Fight, $Out> {
  FightCopyWith<$R, Fight, $Out> get $asFight =>
      $base.as((v, t, t2) => _FightCopyWithImpl(v, t, t2));
}

abstract class FightCopyWith<$R, $In extends Fight, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RulesCopyWith<$R, Rules, Rules> get rules;
  $R call(
      {UuidValue? id,
      Game? game,
      Rules? rules,
      DateTime? createdAt,
      DateTime? updatedAt});
  FightCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FightCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Fight, $Out>
    implements FightCopyWith<$R, Fight, $Out> {
  _FightCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Fight> $mapper = FightMapper.ensureInitialized();
  @override
  RulesCopyWith<$R, Rules, Rules> get rules =>
      $value.rules.copyWith.$chain((v) => call(rules: v));
  @override
  $R call(
          {UuidValue? id,
          Game? game,
          Rules? rules,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (game != null) #game: game,
        if (rules != null) #rules: rules,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  Fight $make(CopyWithData data) => Fight(
      id: data.get(#id, or: $value.id),
      game: data.get(#game, or: $value.game),
      rules: data.get(#rules, or: $value.rules),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  FightCopyWith<$R2, Fight, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FightCopyWithImpl($value, $cast, t);
}

class FightResultMapper extends ClassMapperBase<FightResult> {
  FightResultMapper._();

  static FightResultMapper? _instance;
  static FightResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FightResultMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FightResult';

  static UuidValue _$fightId(FightResult v) => v.fightId;
  static const Field<FightResult, UuidValue> _f$fightId =
      Field('fightId', _$fightId);
  static User _$user(FightResult v) => v.user;
  static const Field<FightResult, User> _f$user = Field('user', _$user);
  static int? _$rank(FightResult v) => v.rank;
  static const Field<FightResult, int> _f$rank =
      Field('rank', _$rank, opt: true);
  static Duration? _$time(FightResult v) => v.time;
  static const Field<FightResult, Duration> _f$time =
      Field('time', _$time, opt: true);
  static int? _$points(FightResult v) => v.points;
  static const Field<FightResult, int> _f$points =
      Field('points', _$points, opt: true);
  static DateTime _$createdAt(FightResult v) => v.createdAt;
  static const Field<FightResult, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(FightResult v) => v.updatedAt;
  static const Field<FightResult, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<FightResult> fields = const {
    #fightId: _f$fightId,
    #user: _f$user,
    #rank: _f$rank,
    #time: _f$time,
    #points: _f$points,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static FightResult _instantiate(DecodingData data) {
    return FightResult(
        fightId: data.dec(_f$fightId),
        user: data.dec(_f$user),
        rank: data.dec(_f$rank),
        time: data.dec(_f$time),
        points: data.dec(_f$points),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static FightResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FightResult>(map);
  }

  static FightResult fromJson(String json) {
    return ensureInitialized().decodeJson<FightResult>(json);
  }
}

mixin FightResultMappable {
  String toJson() {
    return FightResultMapper.ensureInitialized()
        .encodeJson<FightResult>(this as FightResult);
  }

  Map<String, dynamic> toMap() {
    return FightResultMapper.ensureInitialized()
        .encodeMap<FightResult>(this as FightResult);
  }

  FightResultCopyWith<FightResult, FightResult, FightResult> get copyWith =>
      _FightResultCopyWithImpl(this as FightResult, $identity, $identity);
  @override
  String toString() {
    return FightResultMapper.ensureInitialized()
        .stringifyValue(this as FightResult);
  }
}

extension FightResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FightResult, $Out> {
  FightResultCopyWith<$R, FightResult, $Out> get $asFightResult =>
      $base.as((v, t, t2) => _FightResultCopyWithImpl(v, t, t2));
}

abstract class FightResultCopyWith<$R, $In extends FightResult, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  $R call(
      {UuidValue? fightId,
      User? user,
      int? rank,
      Duration? time,
      int? points,
      DateTime? createdAt,
      DateTime? updatedAt});
  FightResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FightResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FightResult, $Out>
    implements FightResultCopyWith<$R, FightResult, $Out> {
  _FightResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FightResult> $mapper =
      FightResultMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call(
          {UuidValue? fightId,
          User? user,
          Object? rank = $none,
          Object? time = $none,
          Object? points = $none,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (fightId != null) #fightId: fightId,
        if (user != null) #user: user,
        if (rank != $none) #rank: rank,
        if (time != $none) #time: time,
        if (points != $none) #points: points,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  FightResult $make(CopyWithData data) => FightResult(
      fightId: data.get(#fightId, or: $value.fightId),
      user: data.get(#user, or: $value.user),
      rank: data.get(#rank, or: $value.rank),
      time: data.get(#time, or: $value.time),
      points: data.get(#points, or: $value.points),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  FightResultCopyWith<$R2, FightResult, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FightResultCopyWithImpl($value, $cast, t);
}

class FightKillMapper extends ClassMapperBase<FightKill> {
  FightKillMapper._();

  static FightKillMapper? _instance;
  static FightKillMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FightKillMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FightKill';

  static UuidValue _$id(FightKill v) => v.id;
  static const Field<FightKill, UuidValue> _f$id = Field('id', _$id);
  static User? _$killer(FightKill v) => v.killer;
  static const Field<FightKill, User> _f$killer =
      Field('killer', _$killer, opt: true);
  static User _$victim(FightKill v) => v.victim;
  static const Field<FightKill, User> _f$victim = Field('victim', _$victim);
  static DateTime _$createdAt(FightKill v) => v.createdAt;
  static const Field<FightKill, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(FightKill v) => v.updatedAt;
  static const Field<FightKill, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<FightKill> fields = const {
    #id: _f$id,
    #killer: _f$killer,
    #victim: _f$victim,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static FightKill _instantiate(DecodingData data) {
    return FightKill(
        id: data.dec(_f$id),
        killer: data.dec(_f$killer),
        victim: data.dec(_f$victim),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static FightKill fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FightKill>(map);
  }

  static FightKill fromJson(String json) {
    return ensureInitialized().decodeJson<FightKill>(json);
  }
}

mixin FightKillMappable {
  String toJson() {
    return FightKillMapper.ensureInitialized()
        .encodeJson<FightKill>(this as FightKill);
  }

  Map<String, dynamic> toMap() {
    return FightKillMapper.ensureInitialized()
        .encodeMap<FightKill>(this as FightKill);
  }

  FightKillCopyWith<FightKill, FightKill, FightKill> get copyWith =>
      _FightKillCopyWithImpl(this as FightKill, $identity, $identity);
  @override
  String toString() {
    return FightKillMapper.ensureInitialized()
        .stringifyValue(this as FightKill);
  }
}

extension FightKillValueCopy<$R, $Out> on ObjectCopyWith<$R, FightKill, $Out> {
  FightKillCopyWith<$R, FightKill, $Out> get $asFightKill =>
      $base.as((v, t, t2) => _FightKillCopyWithImpl(v, t, t2));
}

abstract class FightKillCopyWith<$R, $In extends FightKill, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User>? get killer;
  UserCopyWith<$R, User, User> get victim;
  $R call(
      {UuidValue? id,
      User? killer,
      User? victim,
      DateTime? createdAt,
      DateTime? updatedAt});
  FightKillCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FightKillCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FightKill, $Out>
    implements FightKillCopyWith<$R, FightKill, $Out> {
  _FightKillCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FightKill> $mapper =
      FightKillMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get killer =>
      $value.killer?.copyWith.$chain((v) => call(killer: v));
  @override
  UserCopyWith<$R, User, User> get victim =>
      $value.victim.copyWith.$chain((v) => call(victim: v));
  @override
  $R call(
          {UuidValue? id,
          Object? killer = $none,
          User? victim,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (killer != $none) #killer: killer,
        if (victim != null) #victim: victim,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  FightKill $make(CopyWithData data) => FightKill(
      id: data.get(#id, or: $value.id),
      killer: data.get(#killer, or: $value.killer),
      victim: data.get(#victim, or: $value.victim),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  FightKillCopyWith<$R2, FightKill, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FightKillCopyWithImpl($value, $cast, t);
}
