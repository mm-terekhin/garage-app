import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/app/l10n/l10n.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/features/auth/presentation/blocs/blocs.dart';
import 'package:garage/shared/shared.dart';
import 'package:go_router/go_router.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.registrationTitle,
        ),
      ),
      body: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.all(
                theme.spacings.x4,
              ),
              children: [
                const Logo(),
                SizedBox(
                  height: theme.spacings.x8,
                ),
                SimpleField(
                  errorText: state.isError
                      ? state.form.login.error?.toText(context.l10n)
                      : null,
                  labelText: context.l10n.mailLabel,
                  initialValue: state.form.login.value,
                  onChanged: (value) {
                    final newForm = state.form.copyWith(
                      login: state.form.login.toDirty(
                        value: value,
                      ),
                    );

                    context.read<SignUpBloc>().add(
                          ChangeSignUpFormEvent(
                            form: newForm,
                          ),
                        );
                  },
                ),
                SimpleField(
                  errorText: state.isError
                      ? state.form.username.error?.toText(context.l10n)
                      : null,
                  labelText: context.l10n.usernameLabel,
                  initialValue: state.form.username.value,
                  onChanged: (value) {
                    final newForm = state.form.copyWith(
                      username: state.form.username.toDirty(
                        value: value,
                      ),
                    );

                    context.read<SignUpBloc>().add(
                          ChangeSignUpFormEvent(
                            form: newForm,
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
                      password: PasswordInput.dirty(value),
                    );

                    context.read<SignUpBloc>().add(
                          ChangeSignUpFormEvent(
                            form: newForm,
                          ),
                        );
                  },
                ),
                SimpleField(
                  errorText: state.isError
                      ? state.form.rePassword.error?.toText(context.l10n)
                      : null,
                  labelText: context.l10n.confirmationPassword,
                  initialValue: state.form.rePassword.value,
                  onChanged: (value) {
                    final newForm = state.form.copyWith(
                      rePassword: VerifiedPassword.dirty(
                        value: value,
                        original: state.form.password.value,
                      ),
                    );

                    context.read<SignUpBloc>().add(
                          ChangeSignUpFormEvent(
                            form: newForm,
                          ),
                        );
                  },
                ),
                SizedBox(
                  height: theme.spacings.x2,
                ),
                SubmissionButton(
                  onPressed: () {
                    context.read<SignUpBloc>().add(
                          SubmitSignUpEvent(),
                        );
                  },
                  title: context.l10n.registrationButtonLabel,
                ),
                SizedBox(
                  height: theme.spacings.x5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.haveAccountTitle,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(
                      width: theme.spacings.x4,
                    ),
                    SecondaryButton(
                      onPressed: () {
                        router.pushNamed('sign_in');
                      },
                      title: context.l10n.logInButtonLabel,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
