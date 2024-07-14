import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/shared/presentation/blocs/blocs.dart';
import 'package:get_it/get_it.dart';

import '../../features/features.dart';

class GlobalBlocInjector extends StatelessWidget {
  const GlobalBlocInjector({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetIt.instance<ProfileBloc>(),
        ),
      ],
      child: child,
    );
  }
}
