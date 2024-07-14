import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/features/features.dart';
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
      body: SafeArea(
        child: BlocConsumer<LogInBloc, LogInState>(
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
                      labelText: context.l10n.auth.mailLabel,
                      initialValue: state.form.email.value,
                      onChanged: (value) {
                        final newForm = state.form.copyWith(
                          email: EmailInput.dirty(value: value),
                        );

                        context.read<LogInBloc>().add(
                              ChangeFormLogInEvent(
                                value: newForm,
                              ),
                            );
                      },
                    ),
                    PasswordField(
                      errorText: state.isError
                          ? state.form.password.error?.toText(context.l10n)
                          : null,
                      labelText: context.l10n.auth.passwordLabel,
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
                    SubmissionButton(
                      isLoading: state.status.isLoading,
                      onPressed: () {
                        context.read<LogInBloc>().add(
                              SubmitLogInEvent(),
                            );
                      },
                      title: context.l10n.auth.logInButtonLabel,
                    ),
                    SizedBox(
                      height: theme.spacings.x4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryButton(
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(
                                horizontal: theme.spacings.x1,
                              ),
                            ),
                          ),
                          onPressed: () {
                            router.pushNamed('registration');
                          },
                          title: context.l10n.auth.registrationTitle,
                        ),
                        SecondaryButton(
                          textStyle: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.palette.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(
                                horizontal: theme.spacings.x1,
                              ),
                            ),
                            overlayColor: WidgetStatePropertyAll<Color>(
                              theme.palette.borderPrimary.withOpacity(0.2),
                            ),
                          ),
                          onPressed: () async {
                            router.pushNamed('reset_password_with_email');
                          },
                          title: context.l10n.auth.forgotPasswordLabel,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: theme.spacings.x4,
                    ),
                    const SocialButtons(),
                  ],
                ),
              ),
            );
          },
          listener: (BuildContext context, LogInState state) {
            if (state.status.isSuccess ) {
              router.replaceNamed(
                'news',
              );
            }
          },
        ),
      ),
    );
  }
}
