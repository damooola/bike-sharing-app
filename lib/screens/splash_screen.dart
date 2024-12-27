import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/background_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background gradient
          const BackgroundContainer(),
          //logo
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/logo/bike_sharing_app_logo.svg',
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //get started button
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/onboarding"),
                onHover: (value) => setState(() {
                  isHovered = !isHovered;
                }),
                hoverDuration: const Duration(milliseconds: 500),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  width: 350,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 132, 200, 242),
                          spreadRadius: 2,
                          blurRadius: 3,
                        ),
                      ],
                      border: Border.all(
                        color: isHovered
                            ? const Color(0xFF3D003E)
                            : Colors.transparent,
                        width: 1,
                      )),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF3D003E), fontSize: 21),
                  ),
                ),
              ),

              //login text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF3D003E), fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () => Navigator.pushNamed(context, "/login"),
                      child: Text(
                        "Log in",
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFF3D003E),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              const SizedBox(height: 50)
            ],
          )
        ],
      ),
    );
  }
}
