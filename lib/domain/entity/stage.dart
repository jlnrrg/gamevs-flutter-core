import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';

abstract class Stage implements FlexibleEnum {
  bool get isDlc;

  String toName(BuildContext context);
}
