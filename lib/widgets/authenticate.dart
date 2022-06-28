import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  final Widget form;
  final String header;
  final VoidCallback onHelpPressed;
  const Authenticate({
    required this.form,
    required this.header,
    required this.onHelpPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome to 7Krave'),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    header,
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
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(width: 6.0),
                        CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.blue,
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
              const SizedBox(height: 16.0),
              form,
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ],
    );
  }
}
