import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Text(
          "Profile",
          style: TextStyle(
            color: Color(0xff3570EC),
            fontSize: 25,
          ),
        ),
        Spacer(),
        Icon(Icons.more_vert)
      ],
    );
  }
}