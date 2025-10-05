import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_management_repository.dart';
import '../../../../core/failures/failure.dart';

class CreateEvent {
  final EventManagementRepository repository;

  CreateEvent(this.repository);

  Future<Either<Failure, Event>> call(Event event) {
    return repository.createEvent(event);
  }
}
