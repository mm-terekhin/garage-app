import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garage/shared/shared.dart';

class SubmissionButton extends StatelessWidget {
  const SubmissionButton({
    this.isLoading = false,
    required this.onPressed,
    required this.title,
    super.key,
  });

  final bool isLoading;
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: isLoading ? 1 : 0,
      children: [
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                onPressed: onPressed,
                title: title,
              ),
            ),
          ],
        ),
        const Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
