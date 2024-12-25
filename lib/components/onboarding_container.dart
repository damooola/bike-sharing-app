import 'package:bike_sharing_app/models/onboarding_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingContainer extends StatelessWidget {
  final OnboardingDetails onboardingDetails;
  const OnboardingContainer({super.key, required this.onboardingDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          width: double.infinity,
          fit: BoxFit.fill,
          onboardingDetails.imagePath,
        ),
        Transform.translate(
          offset: const Offset(0, -40),
          child: Column(
            children: [
              Text(
                onboardingDetails.title,
                style: GoogleFonts.montserrat(
                  color: const Color(0xFF3D003E),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 15),
                child: Text(
                  onboardingDetails.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF3D003E),
                    decorationStyle: TextDecorationStyle.dotted,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
