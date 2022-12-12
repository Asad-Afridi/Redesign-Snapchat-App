import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 23,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "Hello,\n",
              style: TextStyle(color: Color(0xff8FAEF1), fontSize: 18)),
          TextSpan(
              text: "Anastasia",
              style: TextStyle(color: Color(0xff3570EC), fontSize: 30))
        ])),
        Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Icon(Icons.search,color: Color(0xffD1DFFD),),
        ),
        SizedBox(
          width: 30,
        )
      ],
    );
  }
}