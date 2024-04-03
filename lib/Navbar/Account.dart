import 'package:flutter/material.dart';
class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
      title: Text('Basic Information',
      style: TextStyle(
        fontSize: 24,
        color: Colors.black
      ),),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 20.0),
              child: Container(
                height: 150,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset('images/cart.png',
                        height: 90,
                        width: 90,
                        fit: BoxFit.cover,),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIcon:   IconButton(
                              icon: Icon(Icons.edit,
                                color: Colors.black,
                              ), onPressed: () {  },
                            ),
                           hintText: 'Aryan Raj',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20
                            ),
                            labelText: 'User Name',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15.0),
              child: Text('Contact Information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                backgroundColor: Color(0xFFFFE680),
                fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
             height: 1,
              thickness: 1, // Adjust the thickness of the divider as needed
              color: Colors.black, // Set the color of the divider
              indent: 15, // Add an indentation to match the text padding
              endIndent: 190, // Add an end indentation to match the text padding
            ),
            SizedBox(
             height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIcon:   IconButton(
                  icon: Icon(Icons.edit,
                    color: Colors.black,
                  ), onPressed: () {  },
                ),
                hintText: 'Aryaraj@45465',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20
                ),
                labelText: 'Eamil',
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
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
            SizedBox(
              height: 80,
            ),
            Center(
              child: SizedBox(
                height: 65,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Myaccount()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFF343434), // text color
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14), // button's shape
                    ),
                  ),
                  child:  Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
