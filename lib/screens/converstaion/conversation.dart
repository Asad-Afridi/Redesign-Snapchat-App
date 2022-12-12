import 'package:flutter/material.dart';
import 'package:snapchat_app_redesigned/screens/converstaion/components/body.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F7FF),
      body: ConversationBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0x64da5afa),
        child: Icon(Icons.edit),
      ),
    );
  }
}
