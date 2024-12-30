import 'package:bike_sharing_app/components/background_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/login_column.dart';
import '../components/signup_column.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginSignUpScreen> {
  bool isLoginTapped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background gradient
        BackgroundContainer(
          whiteBackground: true,
          stops: const [0.01, 0.30],
          whiteBackgroundChild:
              isLoginTapped ? const LoginColumn() : const SignupColumn(),
        ),
        Column(children: [
          //space before the login/signup column
          const SizedBox(height: kToolbarHeight * 1.5),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        const Duration(milliseconds: 200);
                        isLoginTapped = true;
                      }),
                      child: Text(
                        "Log in",
                        style: isLoginTapped
                            ? GoogleFonts.montserrat(
                                color: const Color(0xFF3D003E),
                                fontSize: 32,
                                fontWeight: FontWeight.w600)
                            : GoogleFonts.montserrat(
                                color: const Color(0xFF3D003E).withOpacity(0.3),
                                fontSize: 21,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 6,
                      width: 48,
                      decoration: BoxDecoration(
                          color: isLoginTapped
                              ? const Color(0xFFFFFFFF)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(3)),
                    )
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        const Duration(milliseconds: 200);
                        isLoginTapped = false;
                      }),
                      child: Text("Sign up",
                          style: isLoginTapped
                              ? GoogleFonts.montserrat(
                                  color:
                                      const Color(0xFF3D003E).withOpacity(0.3),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500)
                              : GoogleFonts.montserrat(
                                  color: const Color(0xFF3D003E),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600)),
                    ),
                    //white line
                    Container(
                      height: 6,
                      width: 48,
                      decoration: BoxDecoration(
                          color: isLoginTapped
                              ? Colors.transparent
                              : const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(3)),
                    )
                  ],
                )
              ],
            ),
          ),
        ])
      ],
    ));
  }
}
