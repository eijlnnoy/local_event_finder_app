import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../../../../core/failures/failure.dart';
import '../repositories/auth_repository.dart';

class Register {
  final AuthRepository repository;

  Register(this.repository);

  Future<Either<Failure, User>> call(
    String email,
    String password,
    UserRole role, {
    String? name,
  }) {
    return repository.register(email, password, role, name: name);
  }
}
