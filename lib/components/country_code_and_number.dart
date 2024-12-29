import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryCodeAndNumber extends StatelessWidget {
  const CountryCodeAndNumber({super.key});

  //format phone number to add space after every 3 digits
  String formatPhoneNumber(String phoneNumber) {
    final buffer = StringBuffer();

    for (int i = 0; i < phoneNumber.length; i++) {
      buffer.write(phoneNumber[i]);
      if ((i + 1) % 3 == 0 && i < 6) {
        // Add a space after every 3 characters except the last group
        buffer.write(' ');
      }
    }
    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // country dial code picker
        CountryCodePicker(
          hideCloseIcon: true,
          showFlagDialog: true,
          initialSelection: 'NG',
          dialogSize: const Size(350, 450),
          dialogItemPadding: const EdgeInsets.only(left: 15, bottom: 10),
          dialogTextStyle: GoogleFonts.montserrat(
              color: const Color(0xFF3D003E), fontSize: 15),
          searchPadding:
              const EdgeInsets.only(top: 15, bottom: 20, right: 20, left: 20),
          searchStyle: GoogleFonts.montserrat(
              color: const Color(0xFF3D003E), fontSize: 15),
          builder: (countryCode) {
            return Container(
              width: 150,
              padding: const EdgeInsets.only(right: 8),
              margin: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(countryCode!.dialCode!,
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF3D003E), fontSize: 21)),
                      const SizedBox(width: 30),
                      //down arrow
                      SvgPicture.asset("assets/icons/chevron-down gray.svg"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  //thin line
                  const Divider(thickness: 1, color: Color(0xFFC7C7CC))
                ],
              ),
            );
          },
        ),
        //phone number field
        Container(
            width: 250,
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            margin: const EdgeInsets.only(right: 40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(formatPhoneNumber("8146654567"),
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFF3D003E), fontSize: 21)),
                        const SizedBox(width: 25),
                        //down arrow
                        SvgPicture.asset("assets/icons/check_icon.svg"),
                      ]),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFC7C7CC),
                  )
                ]))
      ],
    );
  }
}
