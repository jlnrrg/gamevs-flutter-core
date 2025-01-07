import 'package:flutter/material.dart';
import 'package:gamevs_core/domain/entity/misc.dart';

abstract class Item<T extends Enum> implements FlexibleEnum<T> {
  String toName(BuildContext context);
}
