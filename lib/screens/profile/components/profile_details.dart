import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage("assets/people/people3.png"),
        ),
        SizedBox(height: 10),
        Text(
          "Purnima Khan",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 3),
        Text(
          "Guidhali School of Music and Drama\nLondon,UK",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff9CB1D8), fontSize: 13),
        ),
      ],
    );
  }
}
