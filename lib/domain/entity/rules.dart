import 'package:dart_mappable/dart_mappable.dart';
import 'package:gamevs_core/gamevs_core.dart';
import 'package:uuid/uuid.dart';

part 'rules.mapper.dart';

@MappableClass()
class Rules with RulesMappable {
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
  final String gameMode;
  final int? lifes;
  final Duration? time;
  final DateTime createdAt;
  final DateTime updatedAt;
}
