import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final List<double>? stops;
  const BackgroundContainer({super.key, this.stops});

  @override
  Widget build(BuildContext context) {

    //background gradient
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
    );
  }
}
