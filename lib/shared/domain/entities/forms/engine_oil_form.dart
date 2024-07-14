import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../entities.dart';

class EngineOilForm extends LiquidForm with FormzMixin, EquatableMixin {
  const EngineOilForm({
    required this.type,
    required super.dateInput,
    required super.numInput,
    required super.textInput,
  });

  final NotNullInput<EngineOilType> type;

  EngineOilForm.initial()
      : type = const NotNullInput<EngineOilType>.pure(),
        super.initial();

  @override
  List<Object?> get props => [
        type,
        ...super.props,
      ];

  @override
  List<FormzInput> get inputs => [
        type,
        ...super.inputs,
      ];
}
