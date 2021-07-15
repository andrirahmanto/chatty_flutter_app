import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatBox extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatBox(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              height: 55,
              width: 55,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: friendName,
                ),
                Text(
                  text,
                  style: unread ? unreadText : readText,
                ),
              ],
            ),
            Spacer(),
            Text(time, style: timeStyle)
          ],
        ));
  }
}
