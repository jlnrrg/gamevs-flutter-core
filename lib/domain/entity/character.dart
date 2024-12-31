import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';
import 'package:gamevs_core/domain/entity/user.dart';
import 'package:uuid/uuid.dart';

class FightPlayer {
  const FightPlayer({
    required this.id,
    required this.user,
    this.character = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final User user;
  final List<Character> character;
  final DateTime createdAt;
  final DateTime updatedAt;
}

abstract class Character implements FlexibleEnum {
  bool get isDlc;

  String toName(BuildContext context);
}
