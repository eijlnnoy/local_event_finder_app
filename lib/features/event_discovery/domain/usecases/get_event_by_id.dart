import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';
import '../../../../core/failures/failure.dart';

class GetEventById {
  final EventRepository repository;

  GetEventById(this.repository);

  Future<Either<Failure, Event>> call(String id) {
    return repository.getEventById(id);
  }
}
