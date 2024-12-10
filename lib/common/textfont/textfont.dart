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
    this.height,
    this.maxLines,
    this.overflow,
    this.softWrap,
  });

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final double? height; // Line height
  final int? maxLines; // Maximum lines to display
  final TextOverflow? overflow; // Overflow handling
  final bool? softWrap; // Text wrapping behavior

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: decoration,
        height: height,
      ),
    );
  }
}
