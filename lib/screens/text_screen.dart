import 'package:flutter/material.dart';
import 'package:gamification/widget/list_vertical.dart';
import 'package:gamification/widget/row_widget.dart';
import 'package:gap/gap.dart';

class TextListScreen extends StatelessWidget {
  const TextListScreen({super.key});

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
            image: Image.asset("assets/images/book.png"),
            text: "Text Materials",
            left: 10,
            right: 0,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Gap(10),
          ListVertical(
            text: "An Introduction to User Experience \nDesign. ",
            text2: "| by Vaexperience ",
            text3: "Text",
            text4: "Read",
            color: Colors.white,
            image: Image.asset("assets/images/Frame5.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "A Designer's guide to the tech \nindustry",
            text2: "| by Lo Min Ming ",
            text3: "Text",
            text4: "Read",
            color: Colors.white,
            image: Image.asset("assets/images/Frame4.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "Laws of UX; A collection of best\npractice",
            text2: "| by Jon Yablonski ",
            text3: "Text",
            text4: "Read",
            color: Colors.white,
            image: Image.asset("assets/images/Frame4.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "Steal like an Artist",
            text2: "| by Austin Kleon ",
            text3: "Text",
            text4: "Read",
            color: Colors.white,
            image: Image.asset("assets/images/Frame4.png"),
          ),
          const Gap(10),
          ListVertical(
            text: "What Is UX Design? \nUnderstanding UX for beginners",
            text2: "| by CareerFoundry",
            text3: "Text",
            text4: "Read",
            color: Colors.white,
            image: Image.asset("assets/images/Frame8.png"),
          ),
        ],
      ),
    );
  }
}
