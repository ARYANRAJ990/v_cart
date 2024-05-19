import 'package:flutter/material.dart';
import 'package:v_cart/catagories/setprice.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading:  Text('🍪',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Biscuits ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
              );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading:Text('🍜',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Noodles ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Text('🍟',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Chips ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Text('🥜',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Namkeens ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Text('🥤',style: TextStyle(
                fontSize: 25,
              ),),            titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Drinks ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Text('🍫',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Choclates ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Text('🍴',style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Others ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
