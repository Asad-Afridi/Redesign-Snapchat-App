import 'package:flutter/material.dart';

import 'package:snapchat_app_redesigned/screens/home/components/stories.dart';
import 'header.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  List<String> images = [
    "assets/stories/story1.png",
    "assets/stories/story2.png",
    "assets/stories/story3.png",
    "assets/stories/story4.png",
    "assets/stories/story5.png",
  ];
  Map<String, List<String>> postData = {
    "image": ["assets/posts/post1.png", "assets/posts/post2.png"],
    "name": ["Jesica Fariya", "Hasnain Hijazi"],
    "people":["assets/stories/story5.png","assets/stories/story3.png"],
    "time": ["1 hour ago", "30 min ago"]
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Header(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'Your Featured Stories',
                style: TextStyle(color: Color(0xff3570EC)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stories(images: images),
            SizedBox(
              height: 15,
            ),
            ...List.generate(
              postData["image"]!.length,
              (index) => PostBox(
                postImage: postData["image"]![index],
                peopleImage: postData["people"]![index],
                peopleName: postData["name"]![index],
                postTime: postData["time"]![index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostBox extends StatelessWidget {
  const PostBox({
    Key? key,
    required this.postImage,
    required this.peopleImage,
    this.peopleName,
    this.postTime,
  }) : super(key: key);
  final String postImage;
  final String peopleImage;
  final peopleName;
  final postTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 380,
            height: 220,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(50),
              ),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    postImage,
                  )),
            ),
          ),
          Positioned(
            bottom: -40,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 317,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(
                        peopleImage,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "$peopleName\n",
                            style: TextStyle(color: Color(0xff6A515E))),
                        TextSpan(
                            text: postTime,
                            style: TextStyle(color: Color(0xffD7BDCA))),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Color(0xff6A515E),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -30,
            right: 60,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
