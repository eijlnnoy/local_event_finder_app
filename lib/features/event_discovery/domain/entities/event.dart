import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime date;
  final double? price;

  const Event({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.date,
    this.price,
  });

  @override
  List<Object?> get props => [id, title, description, location, date, price];
}
