// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'game.dart';

class GameMapper extends EnumMapper<Game> {
  GameMapper._();

  static GameMapper? _instance;
  static GameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GameMapper._());
    }
    return _instance!;
  }

  static Game fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Game decode(dynamic value) {
    switch (value) {
      case 'smash5':
        return Game.smash5;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Game self) {
    switch (self) {
      case Game.smash5:
        return 'smash5';
    }
  }
}

extension GameMapperExtension on Game {
  String toValue() {
    GameMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Game>(this) as String;
  }
}
