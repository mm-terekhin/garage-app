import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../auth.dart';

class ConfirmMailScreen extends StatelessWidget {
  const ConfirmMailScreen({
    required this.credential,
    super.key,
  });

  final UserCredential credential;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ConfirmMailBloc>(
        param1: credential,
      ),
      child: const ConfirmMailView(),
    );
  }
}
