import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

class ConfirmMailView extends StatelessWidget {
  const ConfirmMailView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: const AuthAppBar(title: '',),
      body: BlocBuilder<ConfirmMailBloc, ConfirmMailState>(
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
                context.l10n.auth.descriptionForConfirmMail(
                  mail: state.credential.user?.email ?? '',
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
              state.status.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SecondaryButton(
                      onPressed: () {
                        context.read<ConfirmMailBloc>().add(
                              ResendConfirmMailEvent(),
                            );
                      },
                      title: context.l10n.auth.sendConfirmMailButton,
                    ),
            ],
          );
        },
      ),
    );
  }
}
