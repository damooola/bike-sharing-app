import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../components/onboarding_container.dart';
import '../models/onboarding_details.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentPage = index);
            },
            children: [
              OnboardingContainer(
                  onboardingDetails: OnboardingDetails.locateDetails),
              OnboardingContainer(
                  onboardingDetails: OnboardingDetails.unlockDetails),
              OnboardingContainer(
                  onboardingDetails: OnboardingDetails.rideDetails)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF3D003E), fontSize: 15),
                  ),
                ),
                SmoothPageIndicator(
                  onDotClicked: (index) => _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut),
                  controller: _pageController,
                  count: 3,
                  effect: const WormEffect(
                      dotColor: Color(0xFFD3D3D3),
                      activeDotColor: Color(0xFF3D003E),
                      dotHeight: 12,
                      dotWidth: 12),
                ),
                GestureDetector(
                  onTap: () {
                    currentPage == 2
                        ? Navigator.pushNamed(context, "/login_signup")
                        : _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF3D003E),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
