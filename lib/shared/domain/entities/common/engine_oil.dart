import '../entities.dart';

class EngineOil extends Liquid {
  const EngineOil({
    required this.type,
    required super.date,
    required super.mileage,
    required super.description,
  });

  final EngineOilType type;

  @override
  List<Object?> get props => [
        type,
        date,
        mileage,
        description,
      ];
}
