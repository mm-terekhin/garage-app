import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:garage/shared/domain/domain.dart';

class TransmissionOilForm extends LiquidForm with FormzMixin, EquatableMixin {
  TransmissionOilForm({
    required this.type,
    required super.dateInput,
    required super.numInput,
    required super.textInput,
  });

  TransmissionOilForm.initial()
      : type = const NotNullInput<TransmissionType>.pure(),
        super.initial();

  final NotNullInput<TransmissionType> type;

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
