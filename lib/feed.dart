import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:v_cart/Proucts/MyProducts.dart';
import 'package:v_cart/Proucts/details.dart';
import 'package:v_cart/Proucts/procard.dart';
import 'package:v_cart/Proucts/product.dart';
import 'package:v_cart/chats/chatList.dart';
import 'package:v_cart/Navbar/drwaerNavbar.dart';
import 'package:v_cart/login.dart';
import 'package:v_cart/uploding_button/product_upload.dart';
class Feed extends StatefulWidget {


  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int index=0;
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
              icon: Icon(Icons.notification_add,size: 30,),
              color: Color(0xFFF8B23F),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 35,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, count){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 90,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFFE680)),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 15.0),
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                shape: BoxShape.rectangle,
                borderRadius:   BorderRadius.circular(7),
              ),
              margin: EdgeInsets.symmetric(horizontal: 2),
              child: DropdownButton(
                value: SelectedBlock,
                icon: const Icon(Icons.keyboard_arrow_down,
                color: Colors.black),
                borderRadius: BorderRadius.circular(7),
                dropdownColor:Color(0xFFF7F7F7),
                  underline: Container(),
                items: filter.map((String filter) {
                  return DropdownMenuItem(
                    value: filter,
                    child: Text(filter,style: TextStyle(color: Color(0xFF343434),fontSize: 16,fontWeight: FontWeight.normal),),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    SelectedBlock = newValue!;
                  });
                },
              ),
            ),
          ),
      SizedBox(height: 10),
      // Container(
      //    width: MediaQuery.of(context).size.width,
      //    height: MediaQuery.of(context).size.height,
      //    child: SingleChildScrollView(
      //      child: GridView.builder(
      //        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //          crossAxisCount: 2,
      //          childAspectRatio: (100 / 140),
      //          crossAxisSpacing: 12,
      //          mainAxisSpacing: 12,
      //        ),
      //        scrollDirection: Axis.vertical,
      //        itemCount: myProduct().noodles.length,
      //        shrinkWrap: true, // Ensure GridView takes only the space it needs
      //        physics: NeverScrollableScrollPhysics(), // Disable GridView's scroll behavior
      //        itemBuilder: (context, index) {
      //          return Container(
      //            decoration: BoxDecoration(
      //              borderRadius: BorderRadius.circular(7),
      //              color: Colors.blue,
      //              //image: DecorationImage(
      //              //  image: AssetImage("$myProduct")
      //              // )
      //            ),
      //          );
      //        },
      //      ),
      //    ),
      //  )
        Container(
          height: MediaQuery.of(context).size.height, // Add a fixed height constraint
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 100 / 140,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: myProduct().noodles.length,
              itemBuilder: (context, index) {
                 ProductCard(product: myProduct().noodles[index]);
                 return GestureDetector(
                   onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: myProduct().noodles[index])),
                 ),
                 child: ProductCard(product: myProduct().noodles[index]),
                 );
              },
            ),
          ),
        ),
  ]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xFFF7F7F7),
        buttonBackgroundColor: Color(0xFFF8B23F),
        index: Index,
        animationDuration: Duration(milliseconds: 250),
        onTap: (index) {
          setState(() {
            Index = index;
            button1 = Color(0xFFFF9F00);
            button2 = Color(0xFFFF9F00);
            button3 = Color(0xFFFF9F00);
            if (Index == 0) {
              button1 = Colors.white;
            } else if (Index == 2) {
              button3 = Colors.white;
            } else {
              button2 = Colors.white;
            }
            switch (Index) {
              case 0:
              // Navigate to home page
                break;
              case 1:
              // Navigate to login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => product_upload()),
                );
                break;
              case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => chatlist()),
              );
                break;
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
            child: Icon(
              Icons.add,
              size: 38,
              color: button2,
            ),
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
