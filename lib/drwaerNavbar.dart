import 'package:flutter/material.dart';

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
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text('example@gmail.com'),
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
            title: const Text('Account',style: TextStyle(
                color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) =>  const Account()), // Assuming Feed is the widget you want to navigate to
              //);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.black,),
            title: const Text('Settings',style: TextStyle(
                color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold),),
            onTap: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) =>   Settings()), // Assuming Feed is the widget you want to navigate to
              //);
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Logout',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
            fontSize: 18),),
            leading: const Icon(Icons.logout,color: Colors.black,),
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