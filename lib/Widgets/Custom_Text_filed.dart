import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, required this.SuffixIcon});

  final String hintText;
  final IconData SuffixIcon;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: hintText,
          hintStyle: TextStyle(
            color : Colors.grey[600],
          ),
          suffixIcon: SuffixIcon != null ? Icon(SuffixIcon) : null,
          border: OutlineInputBorder(),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color : Colors.grey[200]!,

            ),
            borderRadius: BorderRadius.circular(10),
          ),

          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color : Colors.grey[200]!,

            ),
          ),
        ),



      ),
    );
  }
}
