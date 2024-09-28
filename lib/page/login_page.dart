import 'package:firebase_login/core/colors.dart';
import 'package:firebase_login/core/space.dart';
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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = true;

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceVH(height: 50.0),
              const Text(
                'Welcome Back!',
                style: headline1,
              ),
              const SpaceVH(height: 10.0),
              const Text(
                'Please sign in to your account',
                style: headline3,
              ),
              const SpaceVH(height: 60.0),
              CustomTextField(
                controller: _emailController,
                image: 'user.svg',
                hintTxt: 'Username',
                obscureText: false,
              ),
              CustomTextField(
                controller: _passwordController,
                image: obscureText ? 'hide.svg' : 'visibility.svg',
                hintTxt: 'Password',
                obscureText: obscureText,
                onIconTap: togglePasswordVisibility,
              ),
              const SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: headline3,
                    ),
                  ),
                ),
              ),
              const SpaceVH(height: 100.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    MainButton(
                      onTap: () {},
                      text: 'Sign in',
                      buttonColor: blueButton,
                    ),
                    const SpaceVH(height: 20.0),
                    MainButton(
                      onTap: () {},
                      text: 'Sign in with google',
                      image: 'google-logo.png',
                      buttonColor: white,
                      textColor: blackBG,
                    ),
                    const SpaceVH(height: 20.0),
                    TextButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (builder) => SignUpPage()));
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
                            style: headlineDot.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                        ]),
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
