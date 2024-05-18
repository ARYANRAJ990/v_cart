import 'package:flutter/material.dart';
class cloth extends StatefulWidget {

  @override
  State<cloth> createState() => _clothState();
}

class _clothState extends State<cloth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('Cloth',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text('👕',
                  style: TextStyle( fontSize: 28,)),

              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' T-Shirt ',style: TextStyle(
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
            ),ListTile(
              leading: Text('👖',
                  style: TextStyle( fontSize: 28,)),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Pant ',style: TextStyle(
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
              leading:  Text('👟',
                  style: TextStyle( fontSize: 28,)),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Shoes ',style: TextStyle(
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
              leading:  Text('🏺',
                  style: TextStyle( fontSize: 28,)),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Perfumes ',style: TextStyle(
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
              leading:  Icon(Icons.soap_rounded,size: 28,color: Colors.yellow[800]),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Soap ',style: TextStyle(
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
              leading:  Icon(Icons.face,size: 28,color: Colors.black),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Shampo ',style: TextStyle(
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
              leading:  Icon(Icons.sanitizer_rounded,size: 28,color: Colors.green[800]),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Handwash ',style: TextStyle(
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
              leading:  Icon(Icons.shopping_cart_checkout,size: 28,color: Colors.black),
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
      ),
    );
  }
}
