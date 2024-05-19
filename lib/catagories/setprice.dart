import 'package:flutter/material.dart';

class setPrice extends StatefulWidget {
  @override
  State<setPrice> createState() => _CycleState();
}

class _CycleState extends State<setPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        centerTitle: true,
        title: Text(
          'Include Some details',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Center(
                child: SizedBox(
                  width: 330,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Aryaraj@45465',
                      alignLabelWithHint: true,
                      labelText: 'Brand*',
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow[800]!,
                          width: 2.0, // Set the width to increase the thickness
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow[800]!,
                          width: 2.0, // Set the width to increase the thickness
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 15), // Adjust this value as needed
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelText: 'Describe what you are selling*',
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                        width: 2.0, // Set the width to increase the thickness
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                        width: 2.0, // Set the width to increase the thickness
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 15), // Adjust this value as needed
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 138.0),
              child: Text(
                'Mention the key features of your item',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
                textAlign: TextAlign.center, // Align the text to the center
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 330,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 30), // Align the icon
                      child: Icon(
                        Icons.currency_rupee,
                        size: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    labelText: 'Set Price*',
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                        width: 2.0, // Set the width to increase the thickness
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                        width: 2.0, // Set the width to increase the thickness
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 15), // Adjust this value as needed
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            SizedBox(
              height: 65,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
              //  Navigator.push(context,
              //      MaterialPageRoute(builder: (context) => Feed()));
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
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
