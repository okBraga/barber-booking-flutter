import 'package:firebase_login/core/colors.dart';
import 'package:firebase_login/core/text_style.dart';
import 'package:firebase_login/widget/custom_text_field.dart';
import 'package:firebase_login/widget/main_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPh = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40.0),
              const Text(
                'Create new account',
                style: headline1,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Please fill in the form to continue',
                style: headline3,
              ),
              const SizedBox(height: 60.0),
              CustomTextField(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Full Name',
              ),
              CustomTextField(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Email Address',
              ),
              CustomTextField(
                controller: userPh,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'Phone Number',
              ),
              CustomTextField(
                controller: userPass,
                obscureText: true,
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
              const SizedBox(height: 80.0),
              MainButton(
                onTap: () {},
                text: 'Sign Up',
                buttonColor: blueButton,
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: headline.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In',
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
      ),
    );
  }
}
