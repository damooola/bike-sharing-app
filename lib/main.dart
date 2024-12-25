import 'package:bike_sharing_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const BikeSharingApp());
}

class BikeSharingApp extends StatelessWidget {
  const BikeSharingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/onboarding": (context) => const OnboardingScreen(),
        "/login": (context) => const LoginScreen(),
      },
    );
  }
}