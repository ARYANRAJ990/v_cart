import 'package:flutter/material.dart';

class stationary extends StatefulWidget {

  @override
  State<stationary> createState() => _stationaryState();
}

class _stationaryState extends State<stationary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('Stationary',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
