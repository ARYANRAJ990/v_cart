import 'package:flutter/material.dart';
import 'package:v_cart/catagories/setprice.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading:  Icon(Icons.note_alt_outlined,size: 28,color: Colors.brown),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' NoteBook ',style: TextStyle(
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
              leading:  Icon(Icons.edit,size: 28,color: Colors.blue[800]),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Pen ',style: TextStyle(
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
              leading:  Icon(Icons.note_add_outlined,size: 28,color: Colors.black),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Diary ',style: TextStyle(
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
              leading:  Icon(Icons.color_lens_rounded,size: 28,color: Colors.yellow[700]),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Colours ',style: TextStyle(
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
              leading:  Icon(Icons.sticky_note_2,size: 28,color: Colors.pink),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Sticky Notes ',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),),
              //tileColor: isSelected ? Colors.grey : null,
              onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>   setPrice()),// Assuming Feed is the widget you want to navigate to
                 );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading:  Icon(Icons.sanitizer_rounded,size: 28,color: Colors.deepOrange),
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(' Glue ',style: TextStyle(
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
              leading:  Icon(Icons.bookmark_add_sharp,size: 28,color: Colors.black),
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
