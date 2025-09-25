import 'package:flutter/material.dart';
import 'package:world_travel/Pages/onboarding.dart';
import 'package:world_travel/Widgets/Primary_color.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,

      body: Stack(
        children: [
          Positioned(
            top: 130,
            left: 50,
            child: Image.asset('assets/top splash.png', width: 130),
          ),
          Positioned(
            bottom: 130,
            right: 50,
            child: Image.asset('assets/bottom splash.png', width: 130),
          ),

          Center(child: Image.asset('assets/WorldTravel.png', width: 271)),
        ],
      ),
    );
  }
}
