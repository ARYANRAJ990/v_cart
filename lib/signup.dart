import 'package:flutter/material.dart';
import 'package:show_hide_password/show_hide_password.dart';
import 'package:v_cart/createAccount.dart';
import 'package:v_cart/login.dart';
class signup extends StatefulWidget {
  const signup({super.key});


  @override
  State<signup> createState() => _loginState();
}

class _loginState extends State<signup> {
  bool passwordVisible = false;
  bool passwordVisible2= false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding:  EdgeInsets.only(top: 80,left: 30),
              child: Row(
                children: [
                  Text('Sign',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),),
                  Text('up',
                    style: TextStyle(
                      color: Color(0xFFF8B23F),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 220,
              child: Image.asset('images/login.png'),
            ),
            const SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  hintText: 'User Name',
                  hintStyle: TextStyle(color: Color(0xFFABABAB),
                      fontSize: 15),
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),

              ),
            ),
            SizedBox(height: 17),
            const SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xFFABABAB),
                      fontSize: 15),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),

              ),
            ),
            SizedBox(height: 17),
            SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                obscureText: !passwordVisible,
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
                  hintStyle: TextStyle(color: Color(0xFFABABAB),
                      fontSize: 15),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),
              ),
            ),
             SizedBox(height: 17),
             SizedBox(
              height: 55,
              width: 295,
              child: TextField(
                obscureText: !passwordVisible2,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible2
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                            () {
                          passwordVisible2 = !passwordVisible2;
                        },
                      );
                    },
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Color(0xFFABABAB),
                      fontSize: 15),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Color(0xFFABABAB)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFABABAB)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 65,
              width: 300,
              child: ElevatedButton(
                  onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => createAccount()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: const Color(0xFF343434), // text color
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14), // button's shape
                    ),
                  ),child: const Text('Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF343434),
                  ),),
                TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const login()));
                }, child: const Text('Sign in',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFD4840A),
                  ),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

