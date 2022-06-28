import 'package:algoriza_task_1/widgets/slide.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  static const _slideList = [
    {
      'imagePath': 'assets/courier.png',
      'headerText': 'Get food delivery to your doorstep asap',
      'subText':
          'We have young and professional delivery team that will bring your food to your doorstep as soon as possible',
    },
    {
      'imagePath': 'assets/delivered.png',
      'headerText': 'Buy any food from your favorite restaurant',
      'subText':
          'We are constantly adding your favorite restaurants throughout the territory and around your area carefully selected',
    },
  ];

  final _pageController = PageController();
  var _slidePosition = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.brown[50],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  onPressed: () {},
                  child: const Text('Skip'),
                ),
              ),
              const SizedBox(height: 8.0),
              RichText(
                text: const TextSpan(
                  text: '7',
                  style: TextStyle(
                    color: Color(0xFF142664),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                  children: [
                    TextSpan(
                      text: 'Krave',
                      style: TextStyle(color: Color(0xFF00E6B3)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Flexible(
                child: PageView.builder(
                  itemCount: _slideList.length,
                  controller: _pageController,
                  onPageChanged: (position) {
                    setState(() {
                      _slidePosition = position;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = _slideList[index];
                    return Slide(
                      imagePath: item['imagePath']!,
                      headerText: item['headerText']!,
                      subText: item['subText']!,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _slideList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _pageController.animateToPage(
                      entry.key,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    ),
                    child: Container(
                      width: 20.0,
                      height: 3.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : const Color(0xFF142664))
                            .withOpacity(
                                _slidePosition == entry.key ? 1.0 : 0.5),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16.0),
              const MyButton(
                text: 'Get Started',
                color: Color(0xFF00E6B3),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(color: Color(0xFF00E6B3)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
