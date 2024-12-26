import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';

abstract class Item implements FlexibleEnum {
  String toName(BuildContext context);
}
