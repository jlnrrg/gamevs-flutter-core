import 'package:uuid/uuid.dart';

class User {
  const User({
    required this.id,
    this.firstName,
    this.lastName,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  final UuidValue id;
  final String? firstName;
  final String? lastName;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;
}
