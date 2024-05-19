import 'package:flutter/material.dart';
import 'package:v_cart/catagories/setprice.dart';


class Electronics extends StatefulWidget {
  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('Electronics',
        style: TextStyle(
          fontSize: 20,
          color:  Color(0xFF343434),
          fontWeight: FontWeight.normal
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading:  Text('📱',style: TextStyle(
                fontSize: 25,
              ),),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text('Mobile phone ',style: TextStyle(
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
              leading:  Icon(Icons.cable,size: 28,color: Colors.red,),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Cable ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()) // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading:  Icon(Icons.mouse,size: 28,color: Colors.green),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Mouse ',style: TextStyle(
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
              leading:  Icon(Icons.headphones,size: 28,color: Colors.brown),
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
              leading:  Icon(Icons.battery_charging_full_outlined,size: 28,color: Colors.black),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Power Bank ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  setPrice()), // Assuming Feed is the widget you want to navigate to
                );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading:  Icon(Icons.charging_station,size: 28,color: Colors.red),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' charger ',style: TextStyle(
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
              leading:  Icon(Icons.keyboard,size: 28,color: Colors.black),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Keyboard ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  setPrice()), // Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading:  Icon(Icons.devices_other_sharp,size: 28,color: Colors.black),
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
