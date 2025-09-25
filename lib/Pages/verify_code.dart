import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:world_travel/Widgets/Custom_Container.dart';

import '../Widgets/Custom_Text.dart';
import '../Widgets/Primary_color.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(text: 'World Travel'),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomText(text: 'Verify Code'),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text:
                        'We will send you a message to your SMS and email, if something goes wrong, please contact us.',
                  ),

                  TextSpan(
                    text: 'Help',
                    style: TextStyle(color: PrimaryColor),
                  ),
                ],
              ),
            ),
          ),

          Gap(40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PinCodeTextField(
              appContext: context,
              length: 4,

              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 84,
                fieldWidth: 80,
                activeFillColor: Colors.grey[200],
                inactiveColor: Colors.grey[200],
                selectedFillColor: Colors.grey[200],
                activeColor: Colors.grey[200],
                selectedColor: Colors.red,
              ),
              enableActiveFill: true,
              keyboardType: TextInputType.number,
            ),
          ),

          Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn’t receive any code? ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Resend Again',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PrimaryColor,
                ),
              ),
            ],
          ),

          Center(
            child: Text(
              'Request a new code in 00:30s',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          
          Gap(50),
          
          Center(child: CustomContainer(text: 'Verify Code'),),
        ],
      ),
    );
  }
}
