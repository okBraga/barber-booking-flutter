import 'package:firebase_login/core/constants/routes.dart';
import 'package:firebase_login/presentation/pages/date_selection_page.dart';
import 'package:firebase_login/presentation/pages/home_page.dart';
import 'package:firebase_login/presentation/pages/login_page.dart';
import 'package:firebase_login/presentation/pages/plan_selection_page.dart';
import 'package:firebase_login/presentation/pages/professional_selection_page.dart';
import 'package:firebase_login/presentation/pages/service_selection_page.dart';
import 'package:firebase_login/presentation/pages/sign_up_page.dart';
import 'package:firebase_login/presentation/pages/summary_page.dart';
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
          useMaterial3: true,
        ),
        initialRoute: Routes.loginPage,
        routes: {
          Routes.loginPage: (_) => const LoginPage(),
          Routes.sigUpPage: (_) => const SignUpPage(),
          Routes.homePage: (_) => const HomePage(),
          Routes.serviceSelectionPage: (_) => const ServiceSelectionPage(),
          Routes.professionalSelectionPage: (_) => const ProfessionalSelectionPage(),
          Routes.dateSelectionPage: (_) => const DateTimeSelectionPage(selectedProfessional: 'Profissional 1'),
          Routes.summaryPage: (_) => SummaryPage(),
          Routes.planPage: (_) => const PlanSelectionPage(),
        });
  }
}
