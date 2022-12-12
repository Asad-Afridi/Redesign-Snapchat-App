import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffC4C4C4),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Search a friend",
            style: TextStyle(
              color: Color(0xffAEB3C2),
            ),
          )
        ],
      ),
    );
  }
}