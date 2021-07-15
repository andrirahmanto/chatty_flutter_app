import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';
import 'chat_box.dart';

class GroupsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Groups", style: title),
          ChatBox(
            imageUrl: 'assets/image/group1.png',
            name: 'Jakarta Fair',
            text: 'Why does everyone ca...',
            time: '11:11',
            unread: false,
          ),
          ChatBox(
            imageUrl: 'assets/image/group2.png',
            name: 'Angga',
            text: 'Here here we can go...',
            time: '7:11',
            unread: true,
          ),
          ChatBox(
            imageUrl: 'assets/image/group3.png',
            name: 'Bentley',
            text: 'The car which does not...',
            time: '7:11',
            unread: true,
          ),
          ChatBox(
            imageUrl: 'assets/image/group3.png',
            name: 'Bentley',
            text: 'The car which does not...',
            time: '7:11',
            unread: true,
          ),
        ],
      ),
    );
  }
}
