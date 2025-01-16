import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gamevs_core/gamevs_core.dart';
import 'package:uuid/uuid.dart';

part 'rules.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class Rules extends Equatable with RulesMappable {
  const Rules({
    required this.id,
    required this.enabledItems,
    required this.allowedCharacters,
    required this.allowedStages,
    required this.gameMode,
    this.lifes,
    this.time,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final List<Item> enabledItems;
  final List<Character> allowedCharacters;
  final List<Stage> allowedStages;
  final GameMode gameMode;
  final int? lifes;
  final Duration? time;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        // TODO(jln): check for performance
        [...enabledItems]..sort(),
        [...allowedCharacters]..sort(),
        [...allowedStages]..sort(),
        gameMode,
        lifes,
        time,
        createdAt
      ];
}

abstract class GameMode<T extends Enum> implements FlexibleEnum<T> {
  String toName(BuildContext context);
}
