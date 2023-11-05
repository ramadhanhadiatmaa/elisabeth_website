import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.title,
    required this.press,
    required this.color,
    required this.size,
    required this.weight,
  });

  final String title;
  final VoidCallback press;
  final Color color;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: AnimatedContainer(
          height: 60,
          duration: const Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeInOut,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: size,
                fontWeight: weight,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonTextMobile extends StatelessWidget {
  const ButtonTextMobile({
    super.key,
    required this.title,
    required this.press,
    required this.color,
    required this.size,
    required this.weight,
  });

  final String title;
  final VoidCallback press;
  final Color color;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: AnimatedContainer(
          height: 20,
          duration: const Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeInOut,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: size,
                fontWeight: weight,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
