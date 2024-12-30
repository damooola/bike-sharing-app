import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bike_sharing_app/components/background_container.dart';
import '../components/button.dart';
import '../components/number_keypad.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});

  //add color gradient to text
  final Shader linearGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Color(0xFF2AF598), Color(0xFF009EFD)],
  ).createShader(const Rect.fromLTRB(0, 101, 0, 805));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          BackgroundContainer(
              whiteBackground: true,
              stops: const [0.01, 0.30],
              whiteBackgroundChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //number row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4, // Number of iterations
                          (i) => Container(
                            width: 50,
                            padding: const EdgeInsets.only(right: 8),
                            margin: const EdgeInsets.only(left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Random().nextInt(10).toString(),
                                  style: GoogleFonts.montserrat(
                                    color: const Color(0xFF3D003E),
                                    fontSize: 32,
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Color(0xFFC7C7CC),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      //text
                      Text(
                          textAlign: TextAlign.center,
                          "Donec viverra eleifend lacus, vitae\n ullamcorper metus sed.",
                          style: GoogleFonts.montserrat(
                            color: const Color(0xFF3D003E),
                            fontSize: 15,
                          )),
                      //phone number text
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Text(
                            textAlign: TextAlign.center,
                            "+234 814 665 4567",
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFF3D003E),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                      Text("Didn't receive SMS?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              foreground: Paint()..shader = linearGradient,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  //flexible space
                  const Spacer(),
                  //login button
                  MyButton(
                    buttonText: "Continue",
                    onTap: () {},
                  ),
                  //keypad stack
                  const NumberKeypad()
                ],
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_rounded,
                        size: 30, color: Color(0xFF3D003E)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Verification",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF3D003E),
                        fontSize: 32,
                        fontWeight: FontWeight.w600)),
              )
            ],
          )
        ],
      ),
    );
  }
}
