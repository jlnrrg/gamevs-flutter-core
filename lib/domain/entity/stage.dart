import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';

abstract class Stage<T extends Enum> implements FlexibleEnum<T> {
  bool get isDlc;

  String toName(BuildContext context);
}
