import 'package:algoriza_task_1/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class AuthOptions extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final VoidCallback onGooglePressed;
  const AuthOptions({
    required this.text,
    required this.onPressed,
    required this.onGooglePressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: text,
          radius: 5.0,
          onPressed: onPressed,
        ),
        const SizedBox(height: 12.0),
        const Center(child: Text('Or')),
        const SizedBox(height: 12.0),
        SizedBox(
          height: 50.0,
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: onGooglePressed,
            style: OutlinedButton.styleFrom(
              primary: const Color(0xFF142664),
              side: const BorderSide(color: Color(0xFF142664)),
            ),
            icon: Image.asset(
              'assets/images/google.png',
              height: 24.0,
              width: 24.0,
            ),
            label: Text(
              '$text with Google',
              style: const TextStyle(
                color: secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
