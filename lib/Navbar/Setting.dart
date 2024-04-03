import 'package:flutter/material.dart';
import 'package:v_cart/Navbar/Create%20new%20Password.dart';
import 'package:v_cart/createAccount.dart';
class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        centerTitle: true,
        title: Text('Setting',
        style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold
        ),),
      ),
     body: Column(
       children: [
         Padding(
           padding:  EdgeInsets.only(top: 15.0),
           child: ListTile(
            leading: Icon(Icons.password,color: Colors.black),
             title: Text('Create new Password',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 16
             ),),
             onTap: () {
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => createpassword()),
               );
             },
           ),
         ),
         Divider(),
         ListTile(

           leading: Icon(Icons.delete_forever,color: Colors.black,),
           title: Text('Delete Account',style: (
           TextStyle(
             fontSize: 16,
             color: Colors.black,
             fontWeight: FontWeight.bold
           )
           ),),

         ),
         Divider(),
       ],
     ),
    );
  }
}
