import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:snapchat_app_redesigned/screens/converstaion/components/body.dart';
import 'package:snapchat_app_redesigned/screens/profile/components/body.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<Widget> body = [ConversationBody(),HomeBody(),ProfileBody()];

int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F7FF),
      body: body[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.mark_email_unread,color: Color(0xff3570EC).withOpacity(0.6), size: 30),
          Icon(Icons.home,color: Color(0xff3570EC).withOpacity(0.6), size: 30),
          Icon(Icons.person,color: Color(0xff3570EC).withOpacity(0.6), size: 30),
        ],
        onTap: (index) {
          setState(() {

          });
          this.index = index;
        },
      ),
    );
  }
}
