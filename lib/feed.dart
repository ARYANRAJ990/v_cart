import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_cart/drwaerNavbar.dart';
class Feed extends StatefulWidget {


  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int Index=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.only(left: 11.0),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Image.asset('images/man.png',
              fit: BoxFit.cover,
              width: 70,
              height: 70),
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
              },
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.amberAccent[100],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Color(0xFFF8B23F),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your text...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
      body: Column(
      children: [


      ],
    ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        buttonBackgroundColor: Color(0xFFF8B23F),
        index: Index,
        animationDuration: Durations.medium1,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined,
            size: 30,
            color: Colors.white),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.add,
                size: 38,
            color: Colors.white,),
            label: 'Upload',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat,
                size: 30,color: Colors.white,),
            label: 'Chats',
          ),

        ],
      ),
    );
  }
}
