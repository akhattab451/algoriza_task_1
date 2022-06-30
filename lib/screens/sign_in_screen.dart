import 'package:flutter/material.dart';

import '../widgets/auth_options.dart';
import '../widgets/country_picker_field.dart';
import '../widgets/header.dart';
import '../widgets/rich_text_button.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/background.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(12.0),
                  children: [
                    Header(title: 'Sign In', onHelpPressed: () {}),
                    const SizedBox(height: 12.0),
                    const Text('Phone Number'),
                    const SizedBox(height: 6.0),
                    CountryPickerField(controller: _phoneController),
                    const SizedBox(height: 18.0),
                    AuthOptions(
                      text: 'Sign In',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // TODO
                        }
                      },
                      onGooglePressed: () {},
                    ),
                    const SizedBox(height: 20.0),
                    Center(
                      child: RichTextButton(
                        text: 'Don\'t have an account? ',
                        clickableText: 'Sign Up',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
