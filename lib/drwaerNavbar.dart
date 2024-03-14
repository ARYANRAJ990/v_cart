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
            leading: const Icon(Icons.person),
            title: const Text('Account'),
            // tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) =>  const Account()), // Assuming Feed is the widget you want to navigate to
              //);
            },
          ),
          ListTile(
            leading:  const Icon(Icons.assignment),
            title:  const Text('Assignment'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) =>   Settings()), // Assuming Feed is the widget you want to navigate to
              //);
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('Contact Us'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
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