import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'user.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class User extends Equatable with UserMappable implements Comparable {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final String name;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [id, name, email, createdAt];

  @override
  int compareTo(other) => id.uuid.compareTo(other.id.uuid);
}
