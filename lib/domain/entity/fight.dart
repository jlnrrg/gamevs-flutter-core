import 'package:gamevs_core/domain/entity/character.dart';
import 'package:gamevs_core/domain/entity/game.dart';
import 'package:gamevs_core/domain/entity/settings.dart';
import 'package:gamevs_core/domain/entity/stage.dart';

class Fight {
  const Fight({
    required this.id,
    required this.game,
    this.players = const [],
    this.stage = const [],
    this.result,
    required this.settings,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final Game game;
  final List<PlayedCharacter> players;
  final List<Stage> stage;
  final List<FightResult>? result;
  final Settings settings;
  final DateTime createdAt;
  final DateTime updatedAt;
}

class FightResult {
  const FightResult({
    required this.fight,
    required this.player,
    this.rank,
    this.time,
    this.points,
    this.kill,
    this.death,
  });

  final Fight fight;
  final PlayedCharacter player;

  // result
  final int? rank;
  final Duration? time;
  final int? points;
  final List<PlayedCharacter>? kill;
  final List<PlayedCharacter>? death;
}
