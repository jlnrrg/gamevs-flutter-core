import 'package:gamevs_core/gamevs_core.dart' as core;

abstract class FlexibleEnum {
  // get the game for the correct enum assignment
  core.Game get game;

  /// dart_mapper method for enums
  String toValue();
}
