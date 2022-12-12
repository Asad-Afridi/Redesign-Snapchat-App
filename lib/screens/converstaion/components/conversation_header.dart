import 'package:flutter/material.dart';

class ConversationHeader extends StatelessWidget {
  const ConversationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Text(
          "Conversations",
          style: TextStyle(
            color: Color(0xff3570EC),
            fontSize: 25,
          ),
        ),
        Icon(Icons.more_vert,color: Color(0xff6A515E),)
      ],
    );
  }
}