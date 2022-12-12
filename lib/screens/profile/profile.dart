import 'package:flutter/material.dart';

import 'package:snapchat_app_redesigned/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F7FF),
      body: ProfileBody(),
    );
  }
}
