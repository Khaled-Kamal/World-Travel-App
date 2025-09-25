import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel/Widgets/Custom_Text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            Gap(150),
            CustomText(text: 'Welcome to Home'),

            Gap(20),

            Image.asset('assets/home.png'),
          ],
        ),
      ),
    );
  }
}
