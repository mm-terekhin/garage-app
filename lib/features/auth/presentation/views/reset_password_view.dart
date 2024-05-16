import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/shared/presentation/presentation.dart';

import '../../auth.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            // title: Text(
            //   context.l10n.reset_password_screen.title,
            // ),
          ),
          body: SafeArea(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(
                theme.spacings.x4,
              ),
              children: [
                SimpleField(
                  labelText:
                      context.l10n.reset_password_screen.newPasswordLabel,
                  initialValue: state.form.newPassword.value,
                  onChanged: (value) {
                    final form = state.form.copyWith(
                      newPassword: state.form.newPassword.toDirty(
                        value: value,
                      ),
                    );

                    context.read<ResetPasswordBloc>().add(
                          ChangeFormResetPasswordEvent(
                            form: form,
                          ),
                        );
                  },
                  errorText: state.isError
                      ? state.form.newPassword.error?.toText(context.l10n)
                      : null,
                ),
                SimpleField(
                  labelText: context
                      .l10n.reset_password_screen.confirmNewPasswordLabel,
                  initialValue: state.form.confirmNewPassword.value,
                  onChanged: (value) {
                    final form = state.form.copyWith(
                      confirmNewPassword: state.form.confirmNewPassword.toDirty(
                        value: value,
                      ),
                    );

                    context.read<ResetPasswordBloc>().add(
                          ChangeFormResetPasswordEvent(
                            form: form,
                          ),
                        );
                  },
                  errorText: state.isError
                      ? state.form.confirmNewPassword.error
                          ?.toText(context.l10n)
                      : null,
                ),
                PrimaryButton(
                  onPressed: () {
                    context.read<ResetPasswordBloc>().add(
                          SubmitResetPasswordEvent(),
                        );
                  },
                  title: context
                      .l10n.reset_password_screen.resetPasswordButtonLabel,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
