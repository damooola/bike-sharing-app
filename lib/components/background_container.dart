import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final List<double>? stops;
  final bool whiteBackground;
  final Widget? whiteBackgroundChild;
  const BackgroundContainer(
      {super.key,
      required this.whiteBackground,
      this.whiteBackgroundChild,
      this.stops});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: stops,
          colors: const [Color(0xFF2AF598), Color(0xFF009EFD)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: whiteBackground
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //space before white background
                const SizedBox(height: kToolbarHeight * 2.5),
                // white backgroud
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 25),
                    padding: const EdgeInsets.only(top: 45),
                    decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(45))),
                    child: whiteBackgroundChild,
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
