import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 244, height: 47,
      decoration: BoxDecoration(
        color :Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text , style: GoogleFonts.fredoka(
          textStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color : Colors.white,
          ),
        ),),
      ),
    );
  }
}
