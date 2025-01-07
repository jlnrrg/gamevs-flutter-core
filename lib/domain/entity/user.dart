import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'user.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all & ~GenerateMethods.equals)
class User extends Equatable with UserMappable {
  const User({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [id, firstName, lastName, email, createdAt];
}
