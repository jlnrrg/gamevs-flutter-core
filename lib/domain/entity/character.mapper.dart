// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character.dart';

class FightPlayerMapper extends ClassMapperBase<FightPlayer> {
  FightPlayerMapper._();

  static FightPlayerMapper? _instance;
  static FightPlayerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FightPlayerMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FightPlayer';

  static UuidValue _$id(FightPlayer v) => v.id;
  static const Field<FightPlayer, UuidValue> _f$id = Field('id', _$id);
  static User _$user(FightPlayer v) => v.user;
  static const Field<FightPlayer, User> _f$user = Field('user', _$user);
  static List<Character<Enum>> _$character(FightPlayer v) => v.character;
  static const Field<FightPlayer, List<Character<Enum>>> _f$character =
      Field('character', _$character, opt: true, def: const []);

  @override
  final MappableFields<FightPlayer> fields = const {
    #id: _f$id,
    #user: _f$user,
    #character: _f$character,
  };

  static FightPlayer _instantiate(DecodingData data) {
    return FightPlayer(
        id: data.dec(_f$id),
        user: data.dec(_f$user),
        character: data.dec(_f$character));
  }

  @override
  final Function instantiate = _instantiate;

  static FightPlayer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FightPlayer>(map);
  }

  static FightPlayer fromJson(String json) {
    return ensureInitialized().decodeJson<FightPlayer>(json);
  }
}

mixin FightPlayerMappable {
  String toJson() {
    return FightPlayerMapper.ensureInitialized()
        .encodeJson<FightPlayer>(this as FightPlayer);
  }

  Map<String, dynamic> toMap() {
    return FightPlayerMapper.ensureInitialized()
        .encodeMap<FightPlayer>(this as FightPlayer);
  }

  FightPlayerCopyWith<FightPlayer, FightPlayer, FightPlayer> get copyWith =>
      _FightPlayerCopyWithImpl(this as FightPlayer, $identity, $identity);
  @override
  String toString() {
    return FightPlayerMapper.ensureInitialized()
        .stringifyValue(this as FightPlayer);
  }
}

extension FightPlayerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FightPlayer, $Out> {
  FightPlayerCopyWith<$R, FightPlayer, $Out> get $asFightPlayer =>
      $base.as((v, t, t2) => _FightPlayerCopyWithImpl(v, t, t2));
}

abstract class FightPlayerCopyWith<$R, $In extends FightPlayer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  ListCopyWith<$R, Character<Enum>,
      ObjectCopyWith<$R, Character<Enum>, Character<Enum>>> get character;
  $R call({UuidValue? id, User? user, List<Character<Enum>>? character});
  FightPlayerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FightPlayerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FightPlayer, $Out>
    implements FightPlayerCopyWith<$R, FightPlayer, $Out> {
  _FightPlayerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FightPlayer> $mapper =
      FightPlayerMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  ListCopyWith<$R, Character<Enum>,
          ObjectCopyWith<$R, Character<Enum>, Character<Enum>>>
      get character => ListCopyWith($value.character,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(character: v));
  @override
  $R call({UuidValue? id, User? user, List<Character<Enum>>? character}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (user != null) #user: user,
        if (character != null) #character: character
      }));
  @override
  FightPlayer $make(CopyWithData data) => FightPlayer(
      id: data.get(#id, or: $value.id),
      user: data.get(#user, or: $value.user),
      character: data.get(#character, or: $value.character));

  @override
  FightPlayerCopyWith<$R2, FightPlayer, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FightPlayerCopyWithImpl($value, $cast, t);
}
