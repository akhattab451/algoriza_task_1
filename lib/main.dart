import 'package:algoriza_task_1/screens/on_boarding_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '7Krave',
      theme: ThemeData(
        fontFamily: 'Roboto',
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
