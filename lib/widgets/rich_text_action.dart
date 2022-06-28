import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextAction extends StatelessWidget {
  final String description;
  final String actionText;
  final VoidCallback action;
  const RichTextAction({
    required this.description,
    required this.actionText,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: RichText(
        text: TextSpan(
          text: description,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
          children: [
            TextSpan(
              text: actionText,
              recognizer: TapGestureRecognizer()..onTap = action,
              style: const TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
