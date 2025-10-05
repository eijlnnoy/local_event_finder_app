import 'package:dartz/dartz.dart';
import '../entities/event.dart';
import '../repositories/event_management_repository.dart';
import '../../../../core/failures/failure.dart';

class GetOrganizerEvents {
  final EventManagementRepository repository;

  GetOrganizerEvents(this.repository);

  Future<Either<Failure, List<Event>>> call(String organizerId) {
    return repository.getOrganizerEvents(organizerId);
  }
}
