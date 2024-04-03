import 'package:flutter/material.dart';
class createpassword extends StatefulWidget {
  const createpassword({super.key});

  @override
  State<createpassword> createState() => _createpasswordState();
}

class _createpasswordState extends State<createpassword> {
  bool PasswordVisible= false;
  bool newPasswordVisible= false;
  bool confirmNewPassordVisible= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFFE680) ,
        foregroundColor: Colors.black,
        title: Text('Privacy',
        style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 15,left: 10),
              child: Text('Please enter your new password',
              style: TextStyle(
                color: Color(0xFFABABAB),
                fontWeight: FontWeight.normal,
                fontSize: 16
              ),),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: !PasswordVisible,
                  style: TextStyle(color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    suffixIcon:   IconButton(
                      icon: Icon(PasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,),
                      onPressed: () {
                        setState(
                              () {
                                PasswordVisible = !PasswordVisible;
                          },
                        );
                      },
                    ),
                    labelText: 'Old Password',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
               height: 15,
             ),
             Center(
               child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: !newPasswordVisible,
                  style: TextStyle(color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    suffixIcon:   IconButton(
                      icon: Icon(newPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                        color: Colors.black,),
                      onPressed: () {
                        setState(
                              () {
                                newPasswordVisible = !newPasswordVisible;
                          },
                        );
                      },
                    ),
                    labelText: 'New Password',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                         ),
             ),
         SizedBox(
           height: 15,
         ),
         Center(
           child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: !confirmNewPassordVisible,
                  style: TextStyle(color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    suffixIcon:   IconButton(
                      icon: Icon(confirmNewPassordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                        color: Colors.black,),
                      onPressed: () {
                        setState(
                              () {
                                confirmNewPassordVisible = !confirmNewPassordVisible;
                          },
                        );
                      },
                    ),
                    labelText: 'Confirm New Password',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
         ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
            ),

            Center(
              child: SizedBox(
                height: 65,
                width: 300,
                child: ElevatedButton(
                    onPressed: (){
                     //Navigator.push(context,
                     //    MaterialPageRoute(builder: (context) => createAccount()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: const Color(0xFF343434), // text color
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14), // button's shape
                      ),
                    ),child: const Text('Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
