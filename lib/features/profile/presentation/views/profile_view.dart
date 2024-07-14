import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/app/app.dart';
import 'package:garage/app/i18n/strings.g.dart';
import 'package:garage/shared/presentation/presentation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../profile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
  });

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = GoRouter.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacings.x4,
        vertical: theme.spacings.x5,
      ),
      physics: const BouncingScrollPhysics(),
      children: [
        const AvatarWidget(),
        SizedBox(
          height: theme.spacings.x4,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Maxim Terekhin',
            style: theme.textTheme.titleMedium,
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'mm.terekhin@gmail.com',
          ),
        ),
        SizedBox(
          height: theme.spacings.x6,
        ),
        ProfileSettingsButton(
          onTap: () => router.pushNamed('notification'),
          title: context.i18n.profile.notificationsButtonLabel,
        ),
        ProfileSettingsButton(
          onTap: () => router.pushNamed('personal_settings'),
          title: context.i18n.profile.personalSettingsButtonLabel,
        ),
        ProfileSettingsButton(
          onTap: () => router.pushNamed('localizations'),
          title: context.i18n.profile.languageButtonLabel,
        ),
        ProfileSettingsButton(
          margin: EdgeInsets.only(
            bottom: theme.spacings.x10,
          ),
          onTap: () async {
            final shouldSignOut = await _showLogOutDialog(context);
          },
          title: context.i18n.profile.exitButtonLabel,
        ),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () async => _showDeleteDialog(context),
            child: Text(
              context.i18n.profile.deleteAccountTitle,
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.palette.textError,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showLogOutDialog(BuildContext ctx) async {
    final theme = Theme.of(ctx);
    final router = GoRouter.of(ctx);

    return await showAdaptiveDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          backgroundColor: theme.palette.bgPrimary,
          titleTextStyle: theme.textTheme.titleMedium,
          contentTextStyle: theme.textTheme.bodyLarge,
          title: Text(
            context.i18n.profile.logOutTitleDialog,
            textAlign: TextAlign.center,
          ),
          content: Text(
            context.i18n.profile.logOutDescriptionDialog,
            textAlign: TextAlign.center,
          ),
          actions: [
            PrimaryButton(
              onPressed: () {
                context.read<ProfileBloc>().add(
                      LogOutProfileEvent(),
                    );
                router.replaceNamed('sign_in');
                Navigator.pop(context);
              },
              title: context.i18n.profile.exitButtonLabel,
            ),
            SecondaryButton(
              onPressed: () => Navigator.pop(context),
              title: context.i18n.cancelLabelButton,
            )
          ],
        );
      },
    );
  }

  Future<void> _showDeleteDialog(BuildContext ctx) async {
    final theme = Theme.of(ctx);
    final router = GoRouter.of(ctx);

    await showAdaptiveDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          backgroundColor: theme.palette.bgPrimary,
          titleTextStyle: theme.textTheme.titleMedium,
          contentTextStyle: theme.textTheme.bodyLarge,
          title: Text(
            context.i18n.profile.deleteAccountTitle,
            textAlign: TextAlign.center,
          ),
          content: Text(
            context.i18n.profile.deleteAccountDescriptionDialog,
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    onPressed: router.pop,
                    title: context.i18n.cancelLabelButton,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SecondaryButton(
                    textStyle: theme.textTheme.titleSmall?.copyWith(
                      color: theme.palette.textError,
                    ),
                    onPressed: () {
                      GetIt.instance<ProfileBloc>().add(
                        DeleteAccountProfileEvent(),
                      );
                      router.pop();
                    },
                    title: context.i18n.profile.deleteAccountButtonLabel,
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
