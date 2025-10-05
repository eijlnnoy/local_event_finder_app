import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';
import '../../../../core/failures/failure.dart';

class GetAllEvents {
  final EventRepository repository;

  GetAllEvents(this.repository);

  Future<Either<Failure, List<Event>>> call() {
    return repository.getAllEvents();
  }
}
