import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemedel extends StatelessWidget {
  const TextThemedel({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.letterSpacing,
    this.textAlign,
    this.decoration,
  });

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.adventPro(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: decoration,
      ),
    );
  }
}