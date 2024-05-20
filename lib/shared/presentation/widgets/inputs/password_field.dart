import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:garage/app/app.dart';
import 'package:garage/shared/presentation/presentation.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    required this.labelText,
    required this.onChanged,
    this.errorText,
    super.key,
  });

  final String labelText;
  final void Function(String) onChanged;
  final String? errorText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SimpleField(
      obscureText: _isHidden,
      errorText: widget.errorText,
      labelText: widget.labelText,
      suffixIcon: InkWell(
        onTap: () => setState(() {
          _isHidden = !_isHidden;
        }),
        child: Icon(
          _isHidden ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
          color: theme.palette.iconPrimary,
          size: theme.spacings.x5,
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
