import 'package:flutter/material.dart';
import 'package:snapchat_app_redesigned/screens/home/home_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}
