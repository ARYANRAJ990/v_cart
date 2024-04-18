import 'package:flutter/material.dart';
class Product_Cat extends StatefulWidget {
  const Product_Cat({super.key});

  @override
  State<Product_Cat> createState() => _Product_CatState();
}

class _Product_CatState extends State<Product_Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('Foods',
          style: TextStyle(
            color: Color(0xFF343434),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.cookie_rounded,color: Colors.black,),
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Biscuits ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
            // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.ramen_dining_outlined,color: Colors.black,),
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Noodles ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.cookie_rounded,color: Colors.black,),
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Chips ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Namkeens ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.local_drink_outlined,color: Colors.black,),
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Drinks ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Choclates ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: const Text(' Others ',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),),
            //tileColor: isSelected ? Colors.grey : null,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) =>   Myaccount()), // Assuming Feed is the widget you want to navigate to
              // );
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
