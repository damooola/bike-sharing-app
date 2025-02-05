import 'package:bike_sharing_app/screens/splash_screen.dart';
import 'package:bike_sharing_app/screens/verification_screen.dart';
import 'package:bike_sharing_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_signup_screen.dart';
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
        "/login_signup": (context) => const LoginSignUpScreen(),
        "/verification": (context) => VerificationScreen(),
        "/welcome": (context) => const WelcomeScreen()
      },
    );
  }
}
