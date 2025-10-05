import 'package:dartz/dartz.dart';
import '../entities/user.dart';
import '../../../../core/failures/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(String email, String password);
  Future<Either<Failure, User>> register(String email, String password, UserRole role, {String? name});
  Future<Either<Failure, User>> getCurrentUser();
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, User>> updateProfile({String? name, UserRole? role});
}
