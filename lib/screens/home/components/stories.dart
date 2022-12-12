import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image(image: AssetImage("assets/stories/addStory.png"),),
            ),
          ),
          ...List.generate(images.length, (index) => StoryBox(imagePath: images[index]))
        ],
      ),
    );
  }
}

class StoryBox extends StatelessWidget {
  const StoryBox({required this.imagePath,
    Key? key,
  }) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: EdgeInsets.all(3),
        height: 54,
        width: 54,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xff598DFA),width: 2)
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Image(image: AssetImage(imagePath),),
        ),
      ),
    );
  }
}