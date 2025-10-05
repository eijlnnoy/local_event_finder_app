import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_management_repository.dart';
import '../../../../core/failures/failure.dart';

class UpdateEvent {
  final EventManagementRepository repository;

  UpdateEvent(this.repository);

  Future<Either<Failure, Event>> call(Event event) {
    return repository.updateEvent(event);
  }
}
