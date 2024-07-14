import '../entities.dart';

class TransmissionOil extends Liquid {
  const TransmissionOil({
    required super.date,
    required super.mileage,
    required super.description,
    required this.type,
  });

  final TransmissionType type;

  @override
  List<Object?> get props => [
        date,
        mileage,
        description,
        type,
      ];
}
