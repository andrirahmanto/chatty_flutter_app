import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty_app/widgets/friends_box.dart';
import 'package:chatty_app/widgets/groups_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        backgroundColor: Colors.blue,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/profile.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Sabrina Carpenter',
                          style: name,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Travel Freelancer',
                          style: status,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FriendsBox(),
                      GroupsBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
