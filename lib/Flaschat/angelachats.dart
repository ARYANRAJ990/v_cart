import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatsScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           // MessagesStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                    //onChanged: (value) {
                    //  messageText = value;
                    //},
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    //messageTextController.clear();
                    //_firestore.collection('messages').add({
                    //  'text': messageText,
                    //  'sender': loggedInUser.email,
                     // })
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class MessagesStream extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return StreamBuilder<QuerySnapshot>(
//      stream: _firestore.collection('messages').snapshots(),
//      builder: (context, snapshot) {
//        if (!snapshot.hasData) {
//          return Center(
//            child: CircularProgressIndicator(
//              backgroundColor: Colors.lightBlueAccent,
//            ),
//          );
//        }
//        final messages = snapshot.data.documents.reversed;
//        List<MessageBubble> messageBubbles = [];
//        for (var message in messages) {
//          final messageText = message.data['text'];
//          final messageSender = message.data['sender'];
//
//          final currentUser = loggedInUser.email;
//
//          final messageBubble = MessageBubble(
//            sender: messageSender,
//            text: messageText,
//            isMe: currentUser == messageSender,
//          );
//
//          messageBubbles.add(messageBubble);
//        }
//        return Expanded(
//          child: ListView(
//            reverse: true,
//            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//            children: messageBubbles,
//          ),
//        );
//      },
//    );
//  }
//}

