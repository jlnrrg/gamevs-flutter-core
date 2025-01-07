import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:gamevs_core/domain/entity/character.dart';
import 'package:gamevs_core/domain/entity/game.dart';
import 'package:gamevs_core/domain/entity/rules.dart';
import 'package:gamevs_core/domain/entity/stage.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

part 'fight.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class Fight extends Equatable with FightMappable {
  const Fight({
    required this.id,
    required this.game,
    required this.rules,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final Game game;
  final Rules rules;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        game,
        rules,
        createdAt,
      ];
}

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class FightResult extends Equatable with FightResultMappable {
  const FightResult({
    required this.id,
    required this.player,
    this.rank,
    this.time,
    this.points,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final FightPlayer player;

  // result
  final int? rank;
  final Duration? time;
  final int? points;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [id, player, rank, time, points, createdAt];
}

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class FightKill extends Equatable with FightKillMappable {
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

  @override
  List<Object?> get props => [id, killer, victim, createdAt];
}
