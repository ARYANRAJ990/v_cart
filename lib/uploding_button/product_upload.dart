import 'package:flutter/material.dart';
class product_upload extends StatefulWidget {
  const product_upload({super.key});

  @override
  State<product_upload> createState() => _product_uploadState();
}

class _product_uploadState extends State<product_upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('What are you offering?',
          style: TextStyle(
            color: Color(0xFF343434),
            fontSize:20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person,color: Colors.black,),
            title: const Text(' My Account',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
            // );
            },
          ),
        ],
      ),
    );
  }
}
