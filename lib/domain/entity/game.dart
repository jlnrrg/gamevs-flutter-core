import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:gamevs_core/l10n/generated/l10n.dart';

part 'game.mapper.dart';

@MappableEnum()
enum Game {
  //dragonBallFighterZ,
  //dragonBallSparkingZero,
  //marioKart8D,
  //mashed,
  //mortalKombat1,
  //northgard,
  smash5;
  //soulCalibur6,
  //streetFighterV;

  String toName(BuildContext context) {
    final translation = L.of(context);
    switch (this) {
      case Game.smash5:
        return translation.smash5Title;
    }
  }
}
