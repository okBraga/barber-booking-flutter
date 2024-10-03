import 'package:firebase_login/constants/routes.dart';
import 'package:firebase_login/core/colors.dart';
import 'package:firebase_login/core/text_style.dart';
import 'package:firebase_login/widget/custom_text_field.dart';
import 'package:firebase_login/widget/main_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = true;

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50.0),
                  const Text(
                    'Welcome Back!',
                    style: headline1,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Please sign in to your account',
                    style: headline3,
                  ),
                  const SizedBox(height: 60.0),
                  CustomTextField(
                    controller: _emailController,
                    image: 'user.svg',
                    hintText: 'Email',
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira seu email';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    controller: _passwordController,
                    image: obscureText ? 'hide.svg' : 'visibility.svg',
                    hintText: 'Password',
                    obscureText: obscureText,
                    onIconTap: togglePasswordVisibility,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira sua senha';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: headline3,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        MainButton(
                          onTap: () {
                            _submitForm();
                          },
                          text: 'Sign in',
                          buttonColor: blueButton,
                        ),
                        const SizedBox(height: 20.0),
                        MainButton(
                          onTap: () {},
                          text: 'Sign in with google',
                          image: 'google-logo.png',
                          buttonColor: white,
                          textColor: blackBG,
                        ),
                        const SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: headline.copyWith(
                                fontSize: 14.0,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(Routes.sigUpPage);
                              },
                              child: Text(
                                'Sign Up',
                                style: headlineDot.copyWith(
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
