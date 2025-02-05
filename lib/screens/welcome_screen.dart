import 'package:bike_sharing_app/components/background_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundContainer(whiteBackground: false),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 99,
                      height: 99,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFFFFFFF)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/damolpfp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.search,
                        size: 35,
                      ),
                      color: const Color(0xFF3D003E),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Text("Hello Damola,",
                    style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3D003E))),
                Text(
                  "Wanna take a ride?",
                  style: GoogleFonts.montserrat(fontSize: 18),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(26.5)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/cloudly.svg',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "18°",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 32,
                                        color: const Color(0xFF3D003E)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text("Cloudy",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: const Color(0xFF3D003E))),
                                ],
                              ),
                              Text("Marbella Dr",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: const Color(0xFF3D003E))),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD1FFEF),
                              borderRadius: BorderRadius.circular(26.5)),
                          child: Text(
                            "12 January, Sunday",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: const Color(0xFF3D003E),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Near You",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF3D003E))),
                    TextButton.icon(
                      label: Text("Browse Map",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, color: const Color(0xFF3D003E))),
                      icon: const Icon(
                        Icons.chevron_right,
                        size: 40,
                        color: Color(
                          0xFF3D003E,
                        ),
                      ),
                      iconAlignment: IconAlignment.end,
                      onPressed: () {},
                    )
                  ],
                ),
                Image.asset("assets/images/girly.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
