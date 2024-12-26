import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/game.dart';
import 'package:gamevs_core/domain/entity/misc.dart';
import 'package:gamevs_core/domain/entity/user.dart';

class PlayedCharacter {
  const PlayedCharacter({
    required this.user,
    this.character = const [],
  });

  final User user;
  final List<Character> character;
}

abstract class Character implements FlexibleEnum {
  bool get isDlc;

  String toName(BuildContext context);
}
