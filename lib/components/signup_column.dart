import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'country_code_and_number.dart';
import 'number_keypad.dart';

class SignupColumn extends StatelessWidget {
  const SignupColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("damolanelson@gmail.com",
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF3D003E), fontSize: 21)),
                      Text(
                        "This email is already registered!",
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFFF2D55), fontSize: 13),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/x-circle.svg",
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFC7C7CC),
              indent: 25,
              endIndent: 40,
            ),
            const SizedBox(height: 5),
            //country code and nunmber row
            const CountryCodeAndNumber(),
            const SizedBox(height: 20),
            //sign up text
            Text("Sign up with your e-mail and phone number",
                style: GoogleFonts.montserrat(
                    color: const Color(0xFF3D003E).withOpacity(0.3),
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        //flexible space
        const Spacer(),
        //sign up button
        const MyButton(buttonText: "Sign up"),
        //keypad
        const NumberKeypad()
      ],
    );
  }
}
