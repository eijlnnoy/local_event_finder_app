import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../../../../core/failures/failure.dart';
import '../repositories/auth_repository.dart';

class UpdateProfile {
  final AuthRepository repository;

  UpdateProfile(this.repository);

  Future<Either<Failure, User>> call({String? name, UserRole? role}) {
    return repository.updateProfile(name: name, role: role);
  }
}
