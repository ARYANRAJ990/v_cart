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
  Color button1 = Color(0xFFFF9F00);
  Color button2 = Colors.white;
  Color button3 = Color(0xFFFF9F00);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.only(left: 18.0),
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
            margin: EdgeInsets.only(right: 20.0),
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
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 10.0),
            child: Center(
              child: SizedBox(
                height: 45,
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF9F00)),
                      borderRadius: BorderRadius.circular(37)
                    ),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor:Color(0xFFABABAB) ,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Color(0xFFABABAB),fontSize: 16,
                    fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(37),
                      borderSide: BorderSide(color: Color(0xFFF7F7F7)),
                    )
                  ),
                ),
              ),
            ),
          ),
          
        ],
            ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xFFF7F7F7),
        buttonBackgroundColor: Color(0xFFF8B23F),
        index: Index,
        animationDuration: Durations.medium1,
        onTap: (Index){
          setState(() {
            button1 = Color(0xFFFF9F00);
            button2 = Color(0xFFFF9F00);
            button3 = Color(0xFFFF9F00);
            if(Index == 0){
              button1 = Colors.white;
            }
            else if(Index == 2){
              button3 = Colors.white;
            }
            else{
              button2 = Colors.white;
            }
          });
        },
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined,
            size: 30,
            color: button1),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.add,
                size: 38,
            color: button2),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat,
                size: 30,color: button3),
          ),
        ],
      ),
    );
  }
}
