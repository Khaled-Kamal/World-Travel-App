import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_travel/Pages/Signup.dart';
import 'package:world_travel/Pages/forgetpassword.dart';
import 'package:world_travel/Pages/welcome.dart';
import 'package:world_travel/Widgets/Custom_Container.dart';
import 'package:world_travel/Widgets/Custom_Text.dart';
import 'package:world_travel/Widgets/Custom_Text_filed.dart';
import 'package:world_travel/Widgets/Primary_color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            CustomText(text: 'Welcome Back'),
            Gap(5),
            Text(
              'sign in to access your account',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),

            Gap(30),

            CustomTextFiled(
              hintText: 'Enter your email',
              SuffixIcon: Icons.email_outlined,
            ),
            Gap(16),
            CustomTextFiled(
              hintText: 'Password',
              SuffixIcon: Icons.visibility_off,
            ),

            Gap(8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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

                      Text('Remember me'),
                    ],
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => Forgetpassword()),
                      );
                    },
                    child: Text(
                      'Forget password ?',
                      style: TextStyle(color: PrimaryColor),
                    ),
                  ),
                ],
              ),
            ),

            Gap(30),

            SizedBox(
              width: 277,
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('or sign in with'),
                  ),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),
            ),
            Gap(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      'assets/google.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      'assets/facebook.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/x.png', fit: BoxFit.contain),
                  ),
                ],
              ),
            ),

            Gap(35),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => Welcome()),
                );
              },
              child: CustomContainer(text: 'Login'),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Signup()),
                    );
                  },
                  child: Text('Sign up', style: TextStyle(color: PrimaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
