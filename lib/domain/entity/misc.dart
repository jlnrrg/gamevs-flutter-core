import 'package:gamevs_core/gamevs_core.dart' as core;

abstract class FlexibleEnum<T extends Enum> implements Comparable<T> {
  // get the game for the correct enum assignment
  core.Game get game;

  /// dart_mapper method for enums
  String toPrimitive();
}

mixin EnumNameOrdering<T extends Enum> on Enum implements Comparable<T> {
  @override
  int compareTo(T other) => name.compareTo(other.name);
}
