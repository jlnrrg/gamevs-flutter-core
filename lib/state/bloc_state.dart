import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:gamevs_core/gamevs_core.dart';

part 'bloc_state.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class BlocState<T> extends Equatable with BlocStateMappable<T> {
  const BlocState(
      {required this.value, this.isOptimisticUI = false, this.failure});

  final T value;
  final bool isOptimisticUI;
  final ApiFailure? failure;

  @override
  List<Object?> get props {
    final lValue = value;
    if (lValue is List<Comparable>) {
      return [
        List.of(lValue)..sort(),
        isOptimisticUI,
        failure,
      ];
    }
    return [
      lValue,
      isOptimisticUI,
      failure,
    ];
  }
}
