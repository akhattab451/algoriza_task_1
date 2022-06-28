import 'package:algoriza_task_1/widgets/authenticate.dart';
import 'package:algoriza_task_1/widgets/my_button.dart';
import 'package:algoriza_task_1/widgets/sign_with_google.dart';

import 'package:flutter/material.dart';

import '../widgets/country_picker_field.dart';
import '../widgets/rich_text_action.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Authenticate(
        header: 'Sign In',
        onHelpPressed: () {},
        form: Column(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Phone Number'),
                  const SizedBox(height: 6.0),
                  CountryPickerField(phoneController: _phoneController),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            MyButton(
              text: 'Sign In',
              color: Colors.blue,
              textColor: Colors.white,
              radius: 5.0,
              onPressed: () {},
            ),
            const SizedBox(height: 16.0),
            const Align(child: Text('Or')),
            const SizedBox(height: 16.0),
            SignWithGoogleButton(onTap: () {}),
            const SizedBox(height: 30.0),
            RichTextAction(
              description: 'Don\'t have an account? ',
              actionText: 'Sign Up',
              action: () {},
            ),
            const SizedBox(height: 36.0),
            Align(
              child: Text(
                'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
