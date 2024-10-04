import 'package:firebase_login/constants/routes.dart';
import 'package:firebase_login/page/date_selection_page.dart';
import 'package:firebase_login/page/login_page.dart';
import 'package:firebase_login/page/professional_selection_page.dart';
import 'package:firebase_login/page/service_selection_page.dart';
import 'package:firebase_login/page/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.dateSelectionPage,
      routes: {
        Routes.loginPage: (_) => const LoginPage(),
        Routes.sigUpPage: (_) => const SignUpPage(),
        Routes.serviceSelectionPage: (_) => const ServiceSelectionPage(),
        Routes.professionalSelectionPage: (_) => const ProfessionalSelectionPage(),
        Routes.dateSelectionPage: (_) => DateTimeSelectionPage(selectedProfessional: 'Profissional 1'),
        Routes.summaryPage: (_) => SummaryPage(
              selectedProfessional: 'Profissional 1',
              selectedDate: DateTime.now(),
              selectedTime: 'Hoje',
            ),
      },
    );
  }
}
