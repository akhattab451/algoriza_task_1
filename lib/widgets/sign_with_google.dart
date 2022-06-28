import 'package:flutter/material.dart';

class SignWithGoogleButton extends StatelessWidget {
  final VoidCallback onTap;
  const SignWithGoogleButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.blue),
        ),
        icon: Image.asset(
          'assets/google.png',
          height: 24.0,
          width: 24.0,
        ),
        label: const Text('Sign with google'),
      ),
    );
  }
}
