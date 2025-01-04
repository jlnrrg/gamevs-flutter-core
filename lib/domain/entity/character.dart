import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

part 'character.mapper.dart';

@MappableClass()
class FightPlayer with FightPlayerMappable {
  const FightPlayer(
      {required this.id, required this.user, this.character = const []});

  final UuidValue id;
  final User user;
  final List<Character> character;
}

abstract class Character implements FlexibleEnum {
  bool get isDlc;

  String toName(BuildContext context);
}
