import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../features/features.dart';
import '../shared/shared.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final _auth = GetIt.instance<FirebaseAuth>();

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
      ShellRoute(
        builder: (context, state, child) {
          return HomeScreen(
            location: state.matchedLocation,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: 'news',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return customTransitionPage<void>(
                context: context,
                state: state,
                child: const NewsScreen(),
              );
            },
          ),
          GoRoute(
            path: '/my_garage',
            name: 'my_garage',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return customTransitionPage<void>(
                context: context,
                state: state,
                child: const MyGarageScreen(),
              );
            },
          ),
          GoRoute(
            path: '/chats',
            name: 'chats',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return customTransitionPage<void>(
                context: context,
                state: state,
                child: const ChatsScreen(),
              );
            },
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return customTransitionPage<void>(
                context: context,
                state: state,
                child: const ProfileScreen(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/notification',
        name: 'notification',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const NotificationSettingsScreen(),
          );
        },
      ),
      GoRoute(
        path: '/personal_settings',
        name: 'personal_settings',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const PersonalSettingsScreen(),
          );
        },
      ),
      GoRoute(
        path: '/localizations',
        name: 'localizations',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return customTransitionPage<void>(
            context: context,
            state: state,
            child: const PersonalSettingsScreen(),
          );
        },
      ),
    ],
    redirect: (
      BuildContext context,
      GoRouterState state,
    ) async {
      final isAuthenticated = _auth.currentUser != null;

      if (isAuthenticated) {
        if (state.matchedLocation.startsWith('/sign_in') ||
            state.matchedLocation.startsWith('/registration') ||
            state.matchedLocation.startsWith('/reset_password_with_email') ||
            state.matchedLocation.startsWith('/reset_password') ||
            state.matchedLocation.startsWith('/confirm_mail')) {
          return '/';
        }
      } else {
        if (!state.matchedLocation.startsWith('/sign_in') &&
            !state.matchedLocation.startsWith('/registration') &&
            !state.matchedLocation.startsWith('/reset_password_with_email') &&
            !state.matchedLocation.startsWith('/reset_password') &&
            !state.matchedLocation.startsWith('/confirm_mail')) {
          return '/sign_in';
        }
      }
      if (state.matchedLocation == '/') {
        return '/';
      }

      return null;
    },
    /*
    (context, state) {
      User? user = FirebaseAuthService().currentuser.toValueNotifier().value;
      if (user != null && user.emailVerified) {
        return maindashboardview;
      } else if (user != null && user.emailVerified == false) {
        return emailnotverified;
      }  else {
        return login;
      }
     */
    refreshListenable: GoRouterRefreshStream(
      _auth.authStateChanges(),
    ),
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

class GoRouterRefreshStream extends ChangeNotifier {
  /// Creates a [GoRouterRefreshStream].
  ///
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
