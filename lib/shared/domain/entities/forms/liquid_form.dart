import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:garage/shared/domain/domain.dart';

class LiquidForm extends Equatable with FormzMixin {
  const LiquidForm({
    required this.dateInput,
    required this.numInput,
    required this.textInput,
  });

  LiquidForm.initial()
      : dateInput = const DateInput.pure(),
        numInput = const NumInput.pure(),
        textInput = const TextInput.pure();

  final DateInput dateInput;
  final NumInput numInput;
  final TextInput textInput;

  @override
  List<Object?> get props => [
        dateInput,
        numInput,
        textInput,
      ];

  @override
  List<FormzInput> get inputs => [
        dateInput,
        numInput,
        textInput,
      ];
}
