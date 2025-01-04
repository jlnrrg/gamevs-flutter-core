// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rules.dart';

class RulesMapper extends ClassMapperBase<Rules> {
  RulesMapper._();

  static RulesMapper? _instance;
  static RulesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RulesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Rules';

  static UuidValue _$id(Rules v) => v.id;
  static const Field<Rules, UuidValue> _f$id = Field('id', _$id);
  static List<Item> _$enabledItems(Rules v) => v.enabledItems;
  static const Field<Rules, List<Item>> _f$enabledItems =
      Field('enabledItems', _$enabledItems);
  static List<Character> _$allowedCharacters(Rules v) => v.allowedCharacters;
  static const Field<Rules, List<Character>> _f$allowedCharacters =
      Field('allowedCharacters', _$allowedCharacters);
  static List<Stage> _$allowedStages(Rules v) => v.allowedStages;
  static const Field<Rules, List<Stage>> _f$allowedStages =
      Field('allowedStages', _$allowedStages);
  static String _$gameMode(Rules v) => v.gameMode;
  static const Field<Rules, String> _f$gameMode = Field('gameMode', _$gameMode);
  static int? _$lifes(Rules v) => v.lifes;
  static const Field<Rules, int> _f$lifes = Field('lifes', _$lifes, opt: true);
  static Duration? _$time(Rules v) => v.time;
  static const Field<Rules, Duration> _f$time =
      Field('time', _$time, opt: true);

  @override
  final MappableFields<Rules> fields = const {
    #id: _f$id,
    #enabledItems: _f$enabledItems,
    #allowedCharacters: _f$allowedCharacters,
    #allowedStages: _f$allowedStages,
    #gameMode: _f$gameMode,
    #lifes: _f$lifes,
    #time: _f$time,
  };

  static Rules _instantiate(DecodingData data) {
    return Rules(
        id: data.dec(_f$id),
        enabledItems: data.dec(_f$enabledItems),
        allowedCharacters: data.dec(_f$allowedCharacters),
        allowedStages: data.dec(_f$allowedStages),
        gameMode: data.dec(_f$gameMode),
        lifes: data.dec(_f$lifes),
        time: data.dec(_f$time));
  }

  @override
  final Function instantiate = _instantiate;

  static Rules fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rules>(map);
  }

  static Rules fromJson(String json) {
    return ensureInitialized().decodeJson<Rules>(json);
  }
}

mixin RulesMappable {
  String toJson() {
    return RulesMapper.ensureInitialized().encodeJson<Rules>(this as Rules);
  }

  Map<String, dynamic> toMap() {
    return RulesMapper.ensureInitialized().encodeMap<Rules>(this as Rules);
  }

  RulesCopyWith<Rules, Rules, Rules> get copyWith =>
      _RulesCopyWithImpl(this as Rules, $identity, $identity);
  @override
  String toString() {
    return RulesMapper.ensureInitialized().stringifyValue(this as Rules);
  }

  @override
  bool operator ==(Object other) {
    return RulesMapper.ensureInitialized().equalsValue(this as Rules, other);
  }

  @override
  int get hashCode {
    return RulesMapper.ensureInitialized().hashValue(this as Rules);
  }
}

extension RulesValueCopy<$R, $Out> on ObjectCopyWith<$R, Rules, $Out> {
  RulesCopyWith<$R, Rules, $Out> get $asRules =>
      $base.as((v, t, t2) => _RulesCopyWithImpl(v, t, t2));
}

abstract class RulesCopyWith<$R, $In extends Rules, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Item, ObjectCopyWith<$R, Item, Item>> get enabledItems;
  ListCopyWith<$R, Character, ObjectCopyWith<$R, Character, Character>>
      get allowedCharacters;
  ListCopyWith<$R, Stage, ObjectCopyWith<$R, Stage, Stage>> get allowedStages;
  $R call(
      {UuidValue? id,
      List<Item>? enabledItems,
      List<Character>? allowedCharacters,
      List<Stage>? allowedStages,
      String? gameMode,
      int? lifes,
      Duration? time});
  RulesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RulesCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Rules, $Out>
    implements RulesCopyWith<$R, Rules, $Out> {
  _RulesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rules> $mapper = RulesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Item, ObjectCopyWith<$R, Item, Item>> get enabledItems =>
      ListCopyWith(
          $value.enabledItems,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(enabledItems: v));
  @override
  ListCopyWith<$R, Character, ObjectCopyWith<$R, Character, Character>>
      get allowedCharacters => ListCopyWith(
          $value.allowedCharacters,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(allowedCharacters: v));
  @override
  ListCopyWith<$R, Stage, ObjectCopyWith<$R, Stage, Stage>> get allowedStages =>
      ListCopyWith(
          $value.allowedStages,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(allowedStages: v));
  @override
  $R call(
          {UuidValue? id,
          List<Item>? enabledItems,
          List<Character>? allowedCharacters,
          List<Stage>? allowedStages,
          String? gameMode,
          Object? lifes = $none,
          Object? time = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (enabledItems != null) #enabledItems: enabledItems,
        if (allowedCharacters != null) #allowedCharacters: allowedCharacters,
        if (allowedStages != null) #allowedStages: allowedStages,
        if (gameMode != null) #gameMode: gameMode,
        if (lifes != $none) #lifes: lifes,
        if (time != $none) #time: time
      }));
  @override
  Rules $make(CopyWithData data) => Rules(
      id: data.get(#id, or: $value.id),
      enabledItems: data.get(#enabledItems, or: $value.enabledItems),
      allowedCharacters:
          data.get(#allowedCharacters, or: $value.allowedCharacters),
      allowedStages: data.get(#allowedStages, or: $value.allowedStages),
      gameMode: data.get(#gameMode, or: $value.gameMode),
      lifes: data.get(#lifes, or: $value.lifes),
      time: data.get(#time, or: $value.time));

  @override
  RulesCopyWith<$R2, Rules, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RulesCopyWithImpl($value, $cast, t);
}
