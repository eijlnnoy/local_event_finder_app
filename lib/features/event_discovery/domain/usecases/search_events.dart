import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';
import '../../../../core/failures/failure.dart';

class SearchEvents {
  final EventRepository repository;

  SearchEvents(this.repository);

  Future<Either<Failure, List<Event>>> call(String query) {
    return repository.searchEvents(query);
  }
}
