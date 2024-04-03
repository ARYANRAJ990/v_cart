import 'package:flutter/material.dart';
import 'package:v_cart/Navbar/Account.dart';
import 'package:v_cart/Navbar/Setting.dart';

class NavBar extends StatelessWidget {
  late String isSelected;

  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFFE680),
            ),
            accountName: const Text('Aryan',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
            fontSize: 14),),
            accountEmail: const Text('example@gmail.com',style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/cart.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person,color: Colors.black,),
            title: const Text(' My Account',style: TextStyle(
                color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.black,),
            title: const Text('Settings',style: TextStyle(
                color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold),),
            onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>   setting()), // Assuming Feed is the widget you want to navigate to
             );
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Logout',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
            fontSize: 16),),
            leading:  Icon(Icons.logout,color: Colors.black,),
            onTap: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) =>  const Start()), // Assuming Feed is the widget you want to navigate to
              //);
            },
          ),
        ],
      ),
    );
  }
}