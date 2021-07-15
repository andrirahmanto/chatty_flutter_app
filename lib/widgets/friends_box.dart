import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';
import 'chat_box.dart';

class FriendsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Friends", style: title),
          ChatBox(
            imageUrl: 'assets/image/friend1.png',
            name: 'Joshuer',
            text: 'Sorry, you’re not my ty...',
            time: 'Now',
            unread: true,
          ),
          ChatBox(
            imageUrl: 'assets/image/friend2.png',
            name: 'Gabriella',
            text: 'I saw it clearly and mig...',
            time: '2:30',
            unread: false,
          ),
        ],
      ),
    );
  }
}
