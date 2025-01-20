import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

part 'character.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class FightPlayer extends Equatable
    with FightPlayerMappable
    implements Comparable {
  const FightPlayer(
      {required this.fightId, required this.user, this.character = const []});

  final UuidValue fightId;
  final User user;
  final List<Character> character;

  @override
  List<Object?> get props => [
        fightId,
        user.id,
        [...character]..sort()
      ];

  @override
  int compareTo(other) => user.compareTo(other.user);
}

abstract class Character<T extends Enum> implements FlexibleEnum<T> {
  bool get isDlc;

  String toName(BuildContext context);
}
