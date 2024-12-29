import 'package:flutter/material.dart';
import 'package:flutter_keyboard/flutter_keyboard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberKeypad extends StatelessWidget {
  const NumberKeypad({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          color: const Color(0xFFD2D5DB),
          padding: const EdgeInsets.only(left: 10, bottom: 70),
          //number keypad
          child: FlutterKeyboard(
            externalPaddingButtons: const EdgeInsets.only(top: 12, right: 10),
            internalPaddingButtons:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            buttonsDecoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(4, 4),
                      spreadRadius: 0.5,
                      blurRadius: 0.5,
                      color: const Color(0xFF3D003E).withOpacity(0.3),
                      blurStyle: BlurStyle.solid)
                ]),
            footerMiddleCharacter: '  0\n',
            characters: const [
              '  1\n',
              '  2\nABC',
              '  3\nDEF',
              '  4\nGHI',
              '  5\nJKL',
              '  6\nMNO',
              '    7\nPQRS',
              '  8\nTUV',
              '    9\nWXYZ'
            ],
            charactersTextStyle: GoogleFonts.montserrat(
                color: const Color(0xFF030303),
                fontSize: 15,
                fontWeight: FontWeight.w500),
            footerRightChild: SvgPicture.asset("assets/icons/delete.svg"),
            onKeyboardTap: (key) {},
          ),
        ),
        //microphone icon
        Padding(
          padding: const EdgeInsets.only(right: 30, bottom: 20),
          child: SvgPicture.asset("assets/icons/dictation.svg"),
        )
      ],
    );
  }
}
