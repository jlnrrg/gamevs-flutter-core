import 'package:dart_mappable/dart_mappable.dart';
import 'package:uuid/uuid.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
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
}
