import 'package:flutter/material.dart';
import 'package:gamification/widget/list_vertical.dart';
import 'package:gamification/widget/row_widget.dart';
import 'package:gap/gap.dart';

class VideoListScreen extends StatelessWidget {
  const VideoListScreen({super.key});

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
            text: "Choosing the Right Path to UX: \nBad and Good UX",
            text2: "| by Vaexperience ",
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame4.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "Choosing the Right Path to UX: \nBad and Good UX",
            text2: "| by Jesse Showalter",
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame7.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "What Is UX Design? \nUnderstanding UX for beginners",
            text2: "| by CareerFoundry",
            text3: "Youtube",
            text4: "Watch",
            color: Colors.white,
            image: Image.asset("assets/images/Frame8.png"),
          )
        ],
      ),
    );
  }
}
