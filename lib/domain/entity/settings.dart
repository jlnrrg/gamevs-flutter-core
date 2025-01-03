import 'package:gamevs_core/gamevs_core.dart';
import 'package:uuid/uuid.dart';

class Settings {
  const Settings({
    required this.id,
    required this.enabledItems,
    required this.allowedCharacters,
    required this.allowedStages,
    required this.gameMode,
    this.lifes,
    this.time,
  });

  final UuidValue id;
  final List<Item> enabledItems;
  final List<Character> allowedCharacters;
  final List<Stage> allowedStages;
  final String gameMode;
  final int? lifes;
  final Duration? time;
}
