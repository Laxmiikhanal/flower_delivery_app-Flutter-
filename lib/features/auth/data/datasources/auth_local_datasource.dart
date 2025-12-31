import 'package:hive/hive.dart';

import '../models/user_model.dart';

class AuthLocalDataSource {
  final Box<UserModel> _usersBox = Hive.box<UserModel>('usersBox');
  final Box<String> _sessionBox = Hive.box<String>('sessionBox');

  /// Register user
  /// - unique email check
  /// - save user
  Future<void> signUp({
    required String fullName,
    required String email,
    required String password,
  }) async {
    final normalizedEmail = email.trim().toLowerCase();

    final existingUser = _usersBox.get(normalizedEmail);
    if (existingUser != null) {
      throw Exception("Email already exists");
    }

    final user = UserModel(
      fullName: fullName.trim(),
      email: normalizedEmail,
      password: password, // (Hive sprint: plain OK unless teacher asks hashing)
    );

    await _usersBox.put(normalizedEmail, user);
  }

  /// Login
  /// - check email exists
  /// - compare password
  /// - save session
  Future<void> login({
    required String email,
    required String password,
  }) async {
    final normalizedEmail = email.trim().toLowerCase();

    final user = _usersBox.get(normalizedEmail);
    if (user == null) {
      throw Exception("User not found");
    }

    if (user.password != password) {
      throw Exception("Incorrect password");
    }

    await _sessionBox.put('loggedInEmail', normalizedEmail);
  }

  /// Logout
  Future<void> logout() async {
    await _sessionBox.delete('loggedInEmail');
  }

  /// Get session email (null if not logged in)
  String? getLoggedInEmail() {
    return _sessionBox.get('loggedInEmail');
  }
}
