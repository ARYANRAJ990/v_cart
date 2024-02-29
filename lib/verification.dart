import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'dart:core';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, left: 30),
              child: Text(
                'Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Code',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF8B23F),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35),
              child: Text(
                'We’ve sent the verification code to the raj*****@gmail.com. Enter your code here',
                style: TextStyle(
                  color: Color(0xFFABABAB),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15.0),
              child: Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 315,
                  height: 48.4,
                  textStyle: const TextStyle(
                    color: Color(0xFFF8B23F),
                    fontSize: 22.29,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 26),
            Center(
              child: Countdown(
              seconds: 60,
              interval: const Duration(milliseconds: 100),
                onFinished: () {
                  print('Timer is done!');
                  },
                  build: (BuildContext context, double time) {
                  // Create a Text widget with the desired style
                  return Text(
                  time.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 20.67,
                  fontWeight: FontWeight.normal),
                      );
              },
              ),
            ),
            const SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Didn’t receive the code ?',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Color(0xFFABABAB),
                ),),
                TextButton(onPressed: (){}, child: const Text('Resend',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFF8B23F),
                ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
