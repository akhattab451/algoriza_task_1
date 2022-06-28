import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;
  final double radius;
  const MyButton({
    required this.text,
    required this.color,
    this.textColor,
    required this.onPressed,
    this.radius = 8.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            onPrimary: textColor ?? Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
