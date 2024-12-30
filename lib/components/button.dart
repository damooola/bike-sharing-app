import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const MyButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF2AF598), Color(0xFF009EFD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(70),
            color: Colors.black),
        child: Text(buttonText,
            style: GoogleFonts.montserrat(
                color: const Color(0xFF3D003E), fontSize: 21)),
      ),
    );
  }
}
