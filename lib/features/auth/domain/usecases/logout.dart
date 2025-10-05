import 'package:dartz/dartz.dart';
import '../../../../core/failures/failure.dart';
import '../repositories/auth_repository.dart';

class Logout {
  final AuthRepository repository;

  Logout(this.repository);

  Future<Either<Failure, void>> call() {
    return repository.logout();
  }
}
