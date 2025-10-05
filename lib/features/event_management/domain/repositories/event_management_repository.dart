import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../../../../core/failures/failure.dart';

abstract class EventManagementRepository {
  Future<Either<Failure, Event>> createEvent(Event event);
  Future<Either<Failure, Event>> updateEvent(Event event);
  Future<Either<Failure, void>> deleteEvent(String id);
  Future<Either<Failure, List<Event>>> getOrganizerEvents(String organizerId);
}
