import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_cart/feed.dart';
import 'package:v_cart/forget.dart';
import 'package:show_hide_password/show_hide_password.dart';
import 'package:v_cart/signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool passwordVisible = false; // Define passwordVisible here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80, left: 30),
              child: Row(
                children: [
                  Text(
                    'Log',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'in',
                    style: GoogleFonts.poppins(
                      color: Color(0xFFF8B23F),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 35),
            SizedBox(
              height: 280,
              child: Image.asset('images/login.png'),
            ),
            SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Color(0xFFABABAB),
                    fontSize: 15,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                obscureText: !passwordVisible, // Use !passwordVisible
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                            () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xFFABABAB),
                    fontSize: 15,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const forget()),
                  );
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFD4840A),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 65,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Feed()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFF343434), // text color
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14), // button's shape
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF343434),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFD4840A),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
