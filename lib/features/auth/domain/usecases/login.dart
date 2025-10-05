import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../../../../core/failures/failure.dart';
import '../repositories/auth_repository.dart';

class Login {
  final AuthRepository repository;

  Login(this.repository);

  Future<Either<Failure, User>> call(String email, String password) {
    return repository.login(email, password);
  }
}
