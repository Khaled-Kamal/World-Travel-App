import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel/Pages/Login.dart';
import 'package:world_travel/Widgets/Custom_Container.dart';
import 'package:world_travel/Widgets/Primary_color.dart';

import '../Widgets/Custom_Text.dart';
import '../Widgets/Custom_Text_filed.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            Gap(80),
            Image.asset('assets/auth.png', width: 250),
            Gap(20),
            CustomText(text: 'Get Started'),
            Gap(5),
            Text(
              'by creating a free account.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),

            Gap(20),

            CustomTextFiled(
              hintText: 'Full name',
              SuffixIcon: Icons.person_outline,
            ),
            Gap(10),
            CustomTextFiled(
              hintText: 'Valid email',
              SuffixIcon: Icons.email_outlined,
            ),
            Gap(10),
            CustomTextFiled(
              hintText: 'Phone number',
              SuffixIcon: Icons.smartphone_outlined,
            ),
            Gap(10),
            CustomTextFiled(
              hintText: 'Strong password',
              SuffixIcon: Icons.visibility_off,
            ),
            Gap(10),
            // By checking the box you agree to our Terms and Conditions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        isChecked = value!;
                      },
                    ),
                  ),

                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: 'By checking the box you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(color: PrimaryColor),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Conditions',
                            style: TextStyle(color: PrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(40),

            CustomContainer(text: 'SignUp'),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('A Ready have Account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Login()),
                    );
                  },
                  child: Text('Login', style: TextStyle(color: PrimaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
