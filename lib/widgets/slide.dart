import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  final String imagePath;
  final String headerText;
  final String subText;
  const Slide({
    required this.imagePath,
    required this.headerText,
    required this.subText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: Image.asset(imagePath)),
        Text(
          headerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          subText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
