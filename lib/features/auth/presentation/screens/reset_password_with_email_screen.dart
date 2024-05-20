import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../auth.dart';

class ResetPasswordWithEmailScreen extends StatelessWidget {
  const ResetPasswordWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ResetPasswordWithEmailBloc>(),
      child: const ResetPasswordWithEmailView(),
    );
  }
}
