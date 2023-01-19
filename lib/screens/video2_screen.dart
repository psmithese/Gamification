import 'package:flutter/material.dart';
import 'package:gamification/widget/list_vertical.dart';
import 'package:gamification/widget/row_widget.dart';
import 'package:gap/gap.dart';

class VideoListTwoScreen extends StatelessWidget {
  const VideoListTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_circle_left_outlined,
              size: 34,
              color: Color(0xff5C58FF),
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RowImage(
            image: Image.asset("assets/images/Emojica.png"),
            text: "Video Materials",
            left: 10,
            right: 0,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Gap(10),
          ListVertical(
            text: "Design thinking Full Course\n| Design thinking process",
            text2: "| by Simplilearn",
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame10.png"),
          ),
          const Gap(10),
          ListVertical(
            text:
                "Webinar- Design thinking : What is\nit? and why should i care?",
            text2: '| by Stanford online',
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame9.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "The Design thinking process",
            text2: "| by Sprouts",
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame11.png"),
          )
        ],
      ),
    );
  }
}
