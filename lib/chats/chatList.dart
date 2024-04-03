import 'package:flutter/material.dart';

class chatlist extends StatefulWidget {
  const chatlist({Key? key}) : super(key: key);

  @override
  State<chatlist> createState() => _chatlistState();
}

class _chatlistState extends State<chatlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Chat History',
          style: TextStyle(
            color: Color(0xFF343434),
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(

              itemCount: 16, // Provide the number of items in your chat history
              itemBuilder: (BuildContext context, int index) {
                // Call a function to build each chat item
                return buildChatItem(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget buildChatItem(BuildContext context, int index) {
    // Example of a simple chat item
    return ListTile(

      leading: CircleAvatar(
        backgroundColor:Color(0xFFF8B23F) ,
        child: Text('A'),
      ),
      title: Text('Chat $index',
      style: TextStyle(
        color: Colors.black,
        fontSize:  18,
        fontWeight: FontWeight.bold,
      ),), // Example chat message, replace it with actual message
      subtitle: Text('how are you',style:
        TextStyle(
               fontWeight: FontWeight.normal,
          fontSize: 16,
          color: Colors.black ,
        ),),
      // Example sender, replace it with actual sender
    );
  }
}
