import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key});

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
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Text(
                'Verification',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Code',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Text(
                'We’ve sent the verification code to the raj*****@gmail.com. Enter your code here',
                style: TextStyle(
                  color: Color(0xFFABABAB),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 45),
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
            SizedBox(height: 26),
            Center(
              child: Countdown(
                seconds: 60,
                interval: const Duration(milliseconds: 100),
                onFinished: () {
                  // Handle countdown finish
                },
                build: (BuildContext context, double time) {
                  return Text(
                    time.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.67,
                      fontWeight: FontWeight.normal,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t receive the code ?',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Color(0xFFABABAB),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle resend code
                  },
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Handle login
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
