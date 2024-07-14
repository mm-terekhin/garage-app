import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/shared/domain/domain.dart';
import 'package:garage/shared/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

import '../../auth.dart';

class ResetPasswordWithEmailView extends StatelessWidget {
  const ResetPasswordWithEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return Scaffold(
      appBar: AuthAppBar(title: '',),
      body: SafeArea(
        child: BlocBuilder<ResetPasswordWithEmailBloc,
            ResetPasswordWithEmailState>(
          builder: (context, state) {
            if (state.viewStatus.isSubmitted) {
              return _Success(
                mail: state.email.value,
                isLoading: state.status.isLoading,
              );
            }
            return _Initial(
              isError: state.isError,
              errorText: state.email.error?.toText(context.l10n),
              value: state.email.value,
              isLoading: state.status.isLoading,
            );
          },
        ),
      ),
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial({
    required this.isError,
    required this.errorText,
    required this.value,
    required this.isLoading,
  });

  final bool isError;
  final String? errorText;
  final String value;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(
        theme.spacings.x4,
      ),
      physics: const BouncingScrollPhysics(),
      children: [
        const Logo(),
        SizedBox(
          height: theme.spacings.x8,
        ),
        SimpleField(
          errorText: isError ? errorText : null,
          labelText: context.l10n.auth.mailLabel,
          initialValue: value,
          onChanged: (value) {
            context.read<ResetPasswordWithEmailBloc>().add(
                  ChangeMailResetPasswordWithEmailEvent(
                    value: EmailInput.dirty(
                      value: value,
                    ),
                  ),
                );
          },
        ),
        SubmissionButton(
          isLoading: isLoading,
          onPressed: () {
            context.read<ResetPasswordWithEmailBloc>().add(
                  const SubmitResetPasswordWithEmailEvent(),
                );
          },
          title: context.l10n.auth.sendEmailButtonLabel,
        ),
      ],
    );
  }
}

class _Success extends StatelessWidget {
  const _Success({
    required this.mail,
    required this.isLoading,
  });

  final String mail;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return BlocBuilder<TimersBloc, TimersState>(
      builder: (context, state) {
        return ListView(
          padding: EdgeInsets.all(
            theme.spacings.x4,
          ),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Text(
              context.l10n.auth.checkMailHeader,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: theme.spacings.x4,
            ),
            Text(
              context.l10n.auth.descriptionForResetPassword(
                mail: mail,
              ),
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
            ),
            SizedBox(
              height: theme.spacings.x4,
            ),
            isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SecondaryButton(
                    onPressed: state.resetPasswordTimeoutSeconds > 0
                        ? null
                        : () {
                            context.read<ResetPasswordWithEmailBloc>().add(
                                  const SubmitResetPasswordWithEmailEvent(),
                                );
                          },
                    title: state.resetPasswordTimeoutSeconds > 0
                        ? context.l10n.auth.sendConfirmMailButtonSeconds(
                            seconds: state.resetPasswordTimeoutSeconds)
                        : context.l10n.auth.sendConfirmMailButton,
                  ),
          ],
        );
      },
    );
  }
}
