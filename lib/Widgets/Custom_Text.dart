import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: GoogleFonts.fredoka(
        textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
      ),
    );
  }
}
