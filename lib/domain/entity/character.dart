import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

part 'character.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class FightPlayer extends Equatable with FightPlayerMappable {
  const FightPlayer(
      {required this.id, required this.user, this.character = const []});

  final UuidValue id;
  final User user;
  final List<Character> character;

  @override
  List<Object?> get props => [
        id,
        user,
        [...character]..sort()
      ];
}

abstract class Character<T extends Enum> implements FlexibleEnum<T> {
  bool get isDlc;

  String toName(BuildContext context);
}
