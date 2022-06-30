import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class RichTextButton extends StatelessWidget {
  final String text;
  final String clickableText;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final double fontSize;
  const RichTextButton({
    required this.text,
    required this.clickableText,
    required this.onPressed,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 16.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: InkWell(
              onTap: onPressed,
              child: Text(
                clickableText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize,
                  color: primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
