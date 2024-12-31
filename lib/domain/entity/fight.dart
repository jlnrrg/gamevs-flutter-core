import 'package:gamevs_core/domain/entity/character.dart';
import 'package:gamevs_core/domain/entity/game.dart';
import 'package:gamevs_core/domain/entity/settings.dart';
import 'package:gamevs_core/domain/entity/stage.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

class Fight {
  const Fight({
    required this.id,
    required this.game,
    this.players = const [],
    this.stages = const [],
    this.result,
    this.settings,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final Game game;
  final List<FightPlayer> players;
  final List<Stage> stages;
  final List<FightResult>? result;
  final Settings? settings;
  final DateTime createdAt;
  final DateTime updatedAt;
}

class FightResult {
  const FightResult({
    required this.id,
    required this.fight,
    required this.player,
    this.rank,
    this.time,
    this.points,
    this.kills,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final Fight fight;
  final FightPlayer player;

  // result
  final int? rank;
  final Duration? time;
  final int? points;
  final List<FightKill>? kills;
  final DateTime createdAt;
  final DateTime updatedAt;
}

class FightKill {
  const FightKill({
    required this.id,
    this.killer,
    required this.victim,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final User? killer;
  final User victim;
  final DateTime createdAt;
  final DateTime updatedAt;
}
