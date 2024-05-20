import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/features.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final router = GoRouter(
    initialLocation: '/sign_in',
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: '/sign_in',
        name: 'sign_in',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const LogInScreen(),
          );
        },
      ),
      GoRoute(
        path: '/registration',
        name: 'registration',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const RegistrationScreen(),
          );
        },
      ),
      GoRoute(
        path: '/reset_password_with_email',
        name: 'reset_password_with_email',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const ResetPasswordWithEmailScreen(),
          );
        },
      ),
      GoRoute(
        path: '/reset_password',
        name: 'reset_password',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const ResetPasswordScreen(),
          );
        },
      ),
      GoRoute(
        path: '/confirm_mail',
        name: 'confirm_mail',
        pageBuilder: (BuildContext context, GoRouterState state) {
          if (state.extra == null) {
            throw ArgumentError();
          }

          final credential = state.extra as UserCredential;

          return customTransitionPage<void>(
            context: context,
            state: state,
            child: ConfirmMailScreen(
              credential: credential,
            ),
          );
        },
      ),
    ],
  );

  CustomTransitionPage customTransitionPage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Change the opacity of the screen using a Curve based on the the animation's
        // value
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}
