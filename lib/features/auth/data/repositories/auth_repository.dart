import '../datasources/auth_local_datasource.dart';

class AuthRepository {
  final AuthLocalDataSource _local;

  AuthRepository(this._local);

  Future<void> signUp({
    required String fullName,
    required String email,
    required String password,
  }) {
    return _local.signUp(fullName: fullName, email: email, password: password);
  }

  Future<void> login({
    required String email,
    required String password,
  }) {
    return _local.login(email: email, password: password);
  }

  Future<void> logout() {
    return _local.logout();
  }

  String? getLoggedInEmail() {
    return _local.getLoggedInEmail();
  }
}
