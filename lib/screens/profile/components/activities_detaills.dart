import 'package:flutter/material.dart';

class ActivitiesDetails extends StatelessWidget {
  const ActivitiesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        eventsFollowersDetails('Events','456'),
        eventsFollowersDetails('Followers','602'),
        eventsFollowersDetails('Following','290'),
      ],
    );
  }
  Text eventsFollowersDetails(String eventName,String number) {
    return Text.rich(TextSpan(
        children: [
          TextSpan(
              text: '$eventName\n\n  ',
              style: TextStyle(color: Color(0xff9CB1D8), fontSize: 13)
          ),
          TextSpan(
              text: number,
              style: TextStyle(fontWeight: FontWeight.bold)
          )
        ]
    ),);
  }
}