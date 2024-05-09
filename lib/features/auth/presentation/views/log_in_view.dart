import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/shared.dart';
import '../../auth.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return Scaffold(
      body: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Center(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: theme.spacings.x4,
                ),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const Logo(),
                  SizedBox(
                    height: theme.spacings.x8,
                  ),
                  SimpleField(
                    errorText: state.isError
                        ? state.form.email.error?.toText(context.l10n)
                        : null,
                    labelText: context.l10n.loginLabel,
                    initialValue: state.form.email.value,
                    onChanged: (value) {
                      final newForm = state.form.copyWith(
                        email: state.form.email.toDirty(
                          value: value,
                        ),
                      );

                      context.read<LogInBloc>().add(
                        ChangeFormLogInEvent(
                          value: newForm,
                        ),
                      );
                    },
                  ),
                  SimpleField(
                    errorText: state.isError
                        ? state.form.password.error?.toText(context.l10n)
                        : null,
                    labelText: context.l10n.passwordLabel,
                    initialValue: state.form.password.value,
                    onChanged: (value) {
                      final newForm = state.form.copyWith(
                        password: state.form.password.toDirty(
                          value: value,
                        ),
                      );

                      context.read<LogInBloc>().add(
                            ChangeFormLogInEvent(
                              value: newForm,
                            ),
                          );
                    },
                  ),
                  SizedBox(
                    height: theme.spacings.x2,
                  ),
                  SubmissionButton(
                    onPressed: () {},
                    title: context.l10n.logInButtonLabel,
                  ),
                  SizedBox(
                    height: theme.spacings.x4,
                  ),
                  SecondaryButton(
                    onPressed: () {
                      router.pushNamed('registration');
                    },
                    title: context.l10n.registrationTitle,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
