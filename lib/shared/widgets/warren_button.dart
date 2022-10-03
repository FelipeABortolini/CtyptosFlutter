import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class WarrenButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const WarrenButton({
    Key? key,
    required this.text,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      onPressed: () => onPressed(),
      color: pinkWarren,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      minWidth: width - 32,
      height: 56,
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: white,
        ),
      ),
    );
  }
}
