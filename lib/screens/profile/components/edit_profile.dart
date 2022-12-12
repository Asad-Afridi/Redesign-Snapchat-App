import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 145,
          height: 35,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffDA5AFA),
                    Color(0xff878EDE),
                  ])),
          child: Row(
            children: [
              Spacer(),
              Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              Spacer(),
              Icon(
                Icons.edit_note,
                color: Colors.white,
              ),
              Spacer(),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Container(
          padding: EdgeInsets.all(4),
          width: 203,
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xff878EDE),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  'Hosting',
                  style:
                  TextStyle(color: Color(0xff878EDE), fontSize: 12),
                ),
              ),
              Text('Attending',
                style: TextStyle(color: Colors.white, fontSize: 12,),),
              Container(),
            ],
          ),
        )
      ],
    );
  }
}