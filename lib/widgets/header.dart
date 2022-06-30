import 'package:flutter/material.dart';

import '../colors.dart';

class Header extends StatelessWidget {
  final String title;
  final VoidCallback onHelpPressed;
  const Header({
    required this.title,
    required this.onHelpPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Welcome to 7Krave'),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
            InkWell(
              onTap: onHelpPressed,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Help',
                    style: TextStyle(color: secondary),
                  ),
                  SizedBox(width: 6.0),
                  CircleAvatar(
                    radius: 8.0,
                    backgroundColor: secondary,
                    child: Icon(
                      Icons.question_mark,
                      size: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
