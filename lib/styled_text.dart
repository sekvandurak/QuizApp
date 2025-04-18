import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.size, {super.key});

  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.lato(color: Colors.white, fontSize: size));
  }
}
