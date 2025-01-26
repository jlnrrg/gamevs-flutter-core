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

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class PlayerState extends Equatable with PlayerStateMappable {
  const PlayerState(
      {required this.player,
      this.isOptimisticUI = false,
      this.failure,
      this.selectedPlayer});

  final User? selectedPlayer;
  final List<FightPlayer> player;
  final bool isOptimisticUI;
  final ApiFailure? failure;

  @override
  List<Object?> get props => [
        selectedPlayer?.id,
        List.of(player)..sort(),
        isOptimisticUI,
        failure,
      ];

  List<User> isSelected(Character c) =>
      player.where((p) => p.character.contains(c)).map((p) => p.user).toList();
}
