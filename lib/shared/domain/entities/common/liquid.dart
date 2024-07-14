import 'package:equatable/equatable.dart';

class Liquid extends Equatable {
  const Liquid({
    required this.date,
    required this.mileage,
    required this.description,
  });

  final DateTime date;
  final double mileage;
  final String description;

  @override
  List<Object?> get props => [
        date,
        mileage,
        description,
      ];
}
