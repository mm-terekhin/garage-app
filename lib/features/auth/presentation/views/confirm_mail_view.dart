import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/features/auth/auth.dart';

class ConfirmMailView extends StatelessWidget {
  const ConfirmMailView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
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
              SubmissionButton(
                isLoading: state.status.isLoading,
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
