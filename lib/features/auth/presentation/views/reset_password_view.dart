import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/shared/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/domain/domain.dart';
import '../../auth.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.auth.title,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
          builder: (context, state) {
            if (state.status.isSuccess) {
              return const _Success();
            }

            return _Initial(
              form: state.form,
              isError: state.isError,
            );
          },
        ),
      ),
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial({
    required this.form,
    required this.isError,
  });

  final ResetPasswordForm form;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(
        theme.spacings.x4,
      ),
      children: [
        PasswordField(
          labelText: context.l10n.auth.newPasswordLabel,
          onChanged: (value) {
            final newForm = form.copyWith(
              newPassword: form.newPassword.toDirty(
                value: value,
              ),
            );

            context.read<ResetPasswordBloc>().add(
                  ChangeFormResetPasswordEvent(
                    form: newForm,
                  ),
                );
          },
          errorText:
              isError ? form.newPassword.error?.toText(context.l10n) : null,
        ),
        PasswordField(
          labelText: context.l10n.auth.confirmNewPasswordLabel,
          onChanged: (value) {
            final newForm = form.copyWith(
              confirmNewPassword: form.confirmNewPassword.toDirty(
                value: value,
              ),
            );

            context.read<ResetPasswordBloc>().add(
                  ChangeFormResetPasswordEvent(
                    form: form,
                  ),
                );
          },
          errorText: isError
              ? form.confirmNewPassword.error?.toText(context.l10n)
              : null,
        ),
        PrimaryButton(
          onPressed: () {
            context.read<ResetPasswordBloc>().add(
                  SubmitResetPasswordEvent(),
                );
          },
          title: context.l10n.auth.resetPasswordButtonLabel,
        )
      ],
    );
  }
}

class _Success extends StatelessWidget {
  const _Success({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(
        theme.spacings.x4,
      ),
      children: [
        Text(
          context.l10n.auth.passwordResetSuccessful,
          style: theme.textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: theme.spacings.x4,
        ),
        Text(
          context.l10n.auth.passwordResetDescription,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: theme.spacings.x5,
        ),
        PrimaryButton(
          onPressed: () {
            router.replaceNamed('sign_in');
          },
          title: context.l10n.auth.goLoginScreenButtonLabel,
        )
      ],
    );
  }
}
