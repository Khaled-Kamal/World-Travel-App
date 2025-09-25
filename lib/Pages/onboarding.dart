import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_travel/Models/Onboarding_Data.dart';
import 'package:world_travel/Pages/Login.dart';
import 'package:world_travel/Widgets/Primary_color.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingDate.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  Gap(50),
                  Image.asset(onboardingDate[index].image, width: 350),

                  Gap(50),
                  Text(
                    onboardingDate[index].title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    onboardingDate.length,
                    (val) => Container(
                      margin: EdgeInsets.only(right: 7),
                      height: 10,
                      width: _currentPage == val ? 28 : 15,
                      decoration: BoxDecoration(
                        color: _currentPage == val
                            ? PrimaryColor
                            : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (_currentPage == onboardingDate.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => Login()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Image.asset('assets/Frame 4.png', width: 79),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
