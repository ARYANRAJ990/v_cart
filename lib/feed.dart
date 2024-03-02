import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:v_cart/drwaerNavbar.dart';
class Feed extends StatefulWidget {


  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  String SelectedBlock= "Boys Block 1";
  List<String> filter=[
    "Boys Block 1",
    "Boys Block 2",
    "Boys Block 3",
    "Boys Block 4",
    "Boys Block 5",
    "Boys Block 6",
    "Girls Block 1",
    "Girls Blolck 2",
  ];
  int Index=1;
  Color button1 = Color(0xFFFF9F00);
  Color button2 = Colors.white;
  Color button3 = Color(0xFFFF9F00);
  List<String> cat=[
    "All",
    "Biscuits",
    "Noodles",
    "Drinks",
    "Namkeen"
  ];
  Widget buildBody(BuildContext ctxt, int index){
    return new Container(
      child: Center(child: Text(cat[index],style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal),)),
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 85,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xFFFCEEC7)),
    );
  }
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
              color: Color(0xFFFCEEC7),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_rounded,size: 30,),
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
                width: MediaQuery.of(context).size.width-15,
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 37,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cat.length,
              itemBuilder: (BuildContext context, int count)=>buildBody(context, count),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 50),
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F7),
              shape: BoxShape.rectangle,
            ),
            child: DropdownButton(
              value: SelectedBlock,
              icon: const Icon(Icons.keyboard_arrow_down,
              color: Colors.black),
              borderRadius: BorderRadius.circular(7),
              iconEnabledColor: Color(0xFFF7F7F7),
              dropdownColor:Color(0xFFF7F7F7),
              items: filter.map((String filter) {
                return DropdownMenuItem(
                  value: filter,
                  child: Text(filter,style: TextStyle(color: Color(0xFF343434),fontSize: 18,fontWeight: FontWeight.normal),),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  SelectedBlock = newValue!;
                });
              },
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
            child: Icon(Icons.home_rounded,
            size: 32,
            color: button1),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.add,
                size: 38,
            color: button2),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_rounded,
                size: 30,color: button3),
          ),
        ],
      ),
    );
  }
}
