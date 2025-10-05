import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../../../../core/failures/failure.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getAllEvents();
  Future<Either<Failure, Event>> getEventById(String id);
  Future<Either<Failure, List<Event>>> searchEvents(String query);
}
