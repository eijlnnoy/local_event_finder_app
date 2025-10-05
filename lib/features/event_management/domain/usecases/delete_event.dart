import 'package:dartz/dartz.dart';
import '../repositories/event_management_repository.dart';
import '../../../../core/failures/failure.dart';

class DeleteEvent {
  final EventManagementRepository repository;

  DeleteEvent(this.repository);

  Future<Either<Failure, void>> call(String id) {
    return repository.deleteEvent(id);
  }
}
