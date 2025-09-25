import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel/Pages/verify_code.dart';
import 'package:world_travel/Widgets/Custom_Container.dart';
import 'package:world_travel/Widgets/Custom_Text.dart';
import 'package:world_travel/Widgets/Custom_Text_filed.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(text: 'World Travel'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Gap(80),
            CustomText(text: 'Forget password '),
            Gap(8),
            Text(
              'enter your phone number below to \n receive an 4-digit reset code',
              style: TextStyle(color: Colors.grey),
            ),
            Gap(40),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomTextFiled(
              hintText: 'Enter Your Email',
              SuffixIcon: Icons.email_outlined,
            ),

            Gap(40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => VerifyCode()),
                );
              },
              child: CustomContainer(text: 'Send Code'),
            ),
          ],
        ),
      ),
    );
  }
}
