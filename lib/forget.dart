import 'package:flutter/material.dart';
import 'package:v_cart/verification.dart';
class forget extends StatefulWidget {
  const forget({super.key});


  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, left: 20),
              child: Text(
                'Forgot',
                style: TextStyle(
                  color: Color(0xFF343434),
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Password',
                style: TextStyle(
                  color: Color(0xFFF8B23F),
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding:  EdgeInsets.only(left: 40.0,right: 40.0),
              child: Text('If you have forgotten you password then no need to worry . Enter your email below',
              style: TextStyle(
                color: Color(0xFFABABAB),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SizedBox(
                height: 55,
                width: 295,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style:  TextStyle(color: Colors.black),
                  decoration:  InputDecoration(
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
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 300.0),
              child: Center(
                child: SizedBox(
                  height: 65,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Verify()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: const Color(0xFF343434), // text color
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14), // button's shape
                        ),
                      ),child: const Text('Send Verification Code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
