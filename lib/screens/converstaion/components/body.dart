import 'package:flutter/material.dart';
import 'conversation_header.dart';
import 'message_box.dart';
import 'search_field.dart';

class ConversationBody extends StatelessWidget {
  ConversationBody({Key? key}) : super(key: key);
  final Map<String, List<String>> messageSender = {
    'senderImage': [
      "assets/stories/story1.png",
      "assets/stories/story2.png",
      "assets/stories/story3.png",
      "assets/stories/story4.png",
      "assets/stories/story5.png",
    ],
    'senderName': [
      'Mike Goldberg',
      'Hanna',
      'Miranda Bell',
      'Julia Green',
      'Jessica'
    ],
    'senderMessage': [
      'It\'s a sunny day.',
      'Good Morning.',
      'Bye-Bye.',
      'Wow, that\'s awesome!',
      'How your life is?'
    ],
    'sendingTime': [
      '4 min ago',
      '12 min ago',
      '16 min ago',
      '20 min ago',
      '42 min ago'
    ]
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              ConversationHeader(),
              SizedBox(height: 20),
              SearchField(),
              SizedBox(height: 30),
              ...List.generate(
                messageSender['senderName']!.length,
                (index) => MessageBox(
                  senderImage: messageSender['senderImage']![index],
                  senderName: messageSender['senderName']![index],
                  senderMessage: messageSender['senderMessage']![index],
                  sendingTime: messageSender['sendingTime']![index],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
