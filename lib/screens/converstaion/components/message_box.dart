import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key, required this.senderImage, required this.senderName, required this.senderMessage, required this.sendingTime,
  }) : super(key: key);
  final String senderImage;
  final String senderName;
  final String senderMessage;
  final String sendingTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            foregroundImage: AssetImage(senderImage),
          ),
          SizedBox(
            width: 20,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: '$senderName\n',
                style: TextStyle(
                    color: Color(0xff505664),
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              TextSpan(
                text: senderMessage,
                style: TextStyle(
                  color: Color(0xff505664),
                ),
              )
            ]),
          ),
          Spacer(),
          Row(
            children: [
              Icon(
                Icons.access_time,
                size: 18,
                color: Color(0xffAEB3C2),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                sendingTime,
                style: TextStyle(
                  color: Color(0xffAEB3C2),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}