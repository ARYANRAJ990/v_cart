import 'package:flutter/material.dart';
class product_upload extends StatefulWidget {
  const product_upload({super.key});

  @override
  State<product_upload> createState() => _product_uploadState();
}

class _product_uploadState extends State<product_upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text('What are you offering?',
          style: TextStyle(
            color: Color(0xFF343434),
            fontSize:20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10), // Add border radius
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                        children: [
                          Icon(Icons.food_bank_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                          SizedBox(height: 5), // Add spacing between icon and text
                          Text(
                            'Foods',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Center(
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10), // Add border radius
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                        children: [
                          Icon(Icons.computer_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                          SizedBox(height: 5), // Add spacing between icon and text
                          Text(
                            'Electronics',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                      children: [
                        Icon(Icons.edit_note_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                        SizedBox(height: 5), // Add spacing between icon and text
                        Text(
                          'Stationary',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14, // Adjust font size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 50),
              Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                      children: [
                        Icon(Icons.checkroom_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                        SizedBox(height: 5), // Add spacing between icon and text
                        Text(
                          'Clothes',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14, // Adjust font size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                      children: [
                        Icon(Icons.pedal_bike_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                        SizedBox(height: 5), // Add spacing between icon and text
                        Text(
                          'Cycle',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14, // Adjust font size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 50),
              Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Align the column content to the center vertically
                      children: [
                        Icon(Icons.apps_outage_outlined, size: 60, color: Color(0xFFFFE680)), // Adjust icon size
                        SizedBox(height: 5), // Add spacing between icon and text
                        Text(
                          'Others',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14, // Adjust font size
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )

          //Expanded(
         //  child: GridView.count(
         //    primary: false,
         //    padding: const EdgeInsets.all(20),
         //    crossAxisSpacing: 10,
         //    mainAxisSpacing: 10,
         //    crossAxisCount: 2,
         //    children: <Widget>[
         //      Container(
         //        padding:  EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //          borderRadius: BorderRadius.circular(15),
         //          color: Colors.grey[400],
         //          boxShadow: [new BoxShadow(
         //            color: Colors.grey,
         //            blurRadius: 3.0,
         //          ),]
         //        ),
         //        child: Column(
         //          children: [
         //            Icon(Icons.food_bank_outlined,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Foods',
         //            style: TextStyle(color: Colors.white,
         //            fontWeight: FontWeight.normal,
         //            fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //      Container(
         //        padding: const EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //            borderRadius: BorderRadius.circular(15),
         //            color: Colors.grey[400],
         //            boxShadow: [new BoxShadow(
         //              color: Colors.grey,
         //              blurRadius: 3.0,
         //            ),]
         //        ),
         //        child: Column(
         //          children: [
         //            Icon(Icons.phone_iphone_sharp,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Mobiles',
         //              style: TextStyle(color: Colors.white,
         //                  fontWeight: FontWeight.normal,
         //                  fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //      Container(
         //        padding: const EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //            borderRadius: BorderRadius.circular(15),
         //            color: Colors.grey[400],
         //            boxShadow: [new BoxShadow(
         //              color: Colors.grey,
         //              blurRadius: 3.0,
         //            ),]
         //        ),
         //        child: Column(
         //          children: [
         //            Icon(Icons.edit_note_outlined,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Stationary',
         //              style: TextStyle(color: Colors.white,
         //                  fontWeight: FontWeight.normal,
         //                  fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //      Container(
         //        padding: const EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //            borderRadius: BorderRadius.circular(15),
         //            color: Colors.grey[400],
         //            boxShadow: [new BoxShadow(
         //              color: Colors.grey,
         //              blurRadius: 3.0,
         //            ),]
         //        ),
         //        child: Column(
         //          children: [
         //            Icon(Icons.speaker_group_outlined,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Electronics',
         //              style: TextStyle(color: Colors.white,
         //                  fontWeight: FontWeight.normal,
         //                  fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //      Container(
         //        padding: const EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //            borderRadius: BorderRadius.circular(15),
         //            color: Colors.grey[400],
         //            boxShadow: [new BoxShadow(
         //              color: Colors.grey,
         //              blurRadius: 3.0,
         //            ),]
         //        ),
         //        child: Column(
         //          children: [
         //            Icon(Icons.checkroom_outlined,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Clothes',
         //              style: TextStyle(color: Colors.white,
         //                  fontWeight: FontWeight.normal,
         //                  fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //      Container(
         //        padding: const EdgeInsets.all(10),
         //        decoration: BoxDecoration(
         //            borderRadius: BorderRadius.circular(15),
         //            color: Colors.grey[400],
         //            boxShadow: [new BoxShadow(
         //              color: Colors.grey,
         //              blurRadius: 3.0,
         //            ),]
         //        ),                  child: Column(
         //          children: [
         //            Icon(Icons.apps_outage_outlined,size: 90,color: Color(0xFFFFE680),),
         //            const Text('Others',
         //              style: TextStyle(color: Colors.white,
         //                  fontWeight: FontWeight.normal,
         //                  fontSize: 22),),
         //          ],
         //        ),
         //      ),
         //    ],
         //  ),
         //),
        ],
      ),

    );
  }
}
