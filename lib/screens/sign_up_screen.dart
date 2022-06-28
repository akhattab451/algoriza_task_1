import 'package:algoriza_task_1/widgets/authenticate.dart';
import 'package:algoriza_task_1/widgets/my_button.dart';
import 'package:algoriza_task_1/widgets/sign_with_google.dart';

import 'package:flutter/material.dart';

import '../widgets/country_picker_field.dart';
import '../widgets/rich_text_action.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _phoneController = TextEditingController();

  var _obscureText = true;

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
        header: 'Sign Up',
        onHelpPressed: () {},
        form: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              const SizedBox(height: 6.0),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'E.g. example@example.com',
                ),
              ),
              const SizedBox(height: 10.0),
              const Text('Phone Number'),
              const SizedBox(height: 6.0),
              CountryPickerField(phoneController: _phoneController),
              const SizedBox(height: 10.0),
              const Text('Password'),
              const SizedBox(height: 6.0),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              MyButton(
                text: 'Sign Up',
                color: Colors.blue,
                textColor: Colors.white,
                radius: 5.0,
                onPressed: () {},
              ),
              const SizedBox(height: 12.0),
              const Align(child: Text('Or')),
              const SizedBox(height: 12.0),
              SignWithGoogleButton(onTap: () {}),
              const SizedBox(height: 24.0),
              RichTextAction(
                description: 'Already have an account? ',
                actionText: 'Sign in here',
                action: () {},
              ),
              const SizedBox(height: 24.0),
              RichTextAction(
                description: 'By registering your account, you agree to our\n',
                actionText: 'Terms and Conditions',
                action: () {},
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
