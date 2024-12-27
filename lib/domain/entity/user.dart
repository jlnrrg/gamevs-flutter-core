import 'package:uuid/uuid.dart';

class User {
  const User(
      {required this.id, this.firstName, this.lastName, required this.email});

  final UuidValue id;
  final String? firstName;
  final String? lastName;
  final String email;
}
