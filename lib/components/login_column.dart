import 'package:bike_sharing_app/components/button.dart';
import 'package:bike_sharing_app/components/country_code_and_number.dart';
import 'package:bike_sharing_app/components/number_keypad.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginColumn extends StatelessWidget {
  const LoginColumn({super.key});

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
            //country code and nunmber row
            const CountryCodeAndNumber(),

            const SizedBox(height: 20),
            //login text
            Text("Log in with your phone number",
                style: GoogleFonts.montserrat(
                    color: const Color(0xFF3D003E).withOpacity(0.3),
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        //flexible space
        const Spacer(),
        //login button
        MyButton(
          buttonText: "Log in",
          onTap: () {},
        ),
        //keypad stack
        const NumberKeypad()
      ],
    );
  }
}
