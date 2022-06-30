import 'package:flutter/material.dart';

import '../widgets/auth_options.dart';
import '../widgets/country_picker_field.dart';
import '../widgets/header.dart';
import '../widgets/rich_text_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var _obscureText = true;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Image.asset(
          'assets/images/background.jpg',
          fit: BoxFit.cover,
        ),
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(
                  title: 'Sign Up',
                  onHelpPressed: () {},
                ),
                const SizedBox(height: 12.0),
                const Text('Email'),
                const SizedBox(height: 6.0),
                TextFormField(
                  validator: _validate,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'E.g. example@example.com',
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text('Phone Number'),
                const SizedBox(height: 6.0),
                CountryPickerField(controller: _phoneController),
                const SizedBox(height: 10.0),
                const Text('Password'),
                const SizedBox(height: 6.0),
                TextFormField(
                  obscureText: _obscureText,
                  validator: _validate,
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
                const SizedBox(height: 18.0),
                AuthOptions(
                  text: 'Sign Up',
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
                    text: 'Already have an account?',
                    clickableText: 'Sign in here',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(height: 24.0),
                RichTextButton(
                  text: 'By registering your account, you agree to our\n',
                  clickableText: 'Terms and Conditions',
                  onPressed: () {},
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validate(String? value) {
    if (value?.isEmpty == true) {
      return 'Required field.';
    }
    return null;
  }
}
