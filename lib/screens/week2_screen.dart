import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/text2_screen.dart';
import 'package:gamification/screens/video2_screen.dart';
import 'package:gamification/widget/list_widget.dart';
import 'package:gamification/widget/row_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class WeekTwoScreen extends StatelessWidget {
  const WeekTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 34,
            color: Color(0xff5C58FF),
          ),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: Column(
        children: [
          RowImage(
            image: Image.asset("assets/images/Emoji3.png"),
            text: "Week 2 - Design thinking",
            left: 42,
            right: 0,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Gap(32),
          RowImage(
            image: Image.asset("assets/images/Emojic.png"),
            text: "Objective",
            left: 20,
            right: 0,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              color: Colors.white,
              elevation: 0,
              child: Column(
                children: [
                  const Gap(6),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Understand the UX design process end to end",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Know the basics of the design thinking",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Empathize with users ",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Figure out user pain points",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Understand and build personas",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(22),
                ],
              ),
            ),
          ),
          const Gap(21),
          Row(
            children: [
              RowImage(
                image: Image.asset("assets/images/Emojica.png"),
                text: "Video Material",
                left: 20,
                right: 0,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () => goTo(context, const VideoListTwoScreen()),
                child: const CustomText(
                    text: "See all",
                    style: TextStyle(
                        color: Color(0xff5C58FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                    align: TextAlign.end),
              )
            ],
          ),
          const Gap(13.5),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 104,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListSlide(
                    text:
                        "Design thinking Full Course\n| Design thinking process",
                    text2: "| by Simplilearn",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame10.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text:
                        "Webinar- Design thinking : What is\nit? and why should i care?",
                    text2: '| by Stanford online',
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame9.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "The Design thinking process",
                    text2: "| by Sprouts",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame11.png"),
                  )
                ],
              ),
            ),
          ),
          const Gap(19),
          Row(
            children: [
              RowImage(
                image: Image.asset("assets/images/book.png"),
                text: "Text Material",
                left: 20,
                right: 0,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () => goTo(context, const TextTwoListScreen()),
                child: const CustomText(
                    text: "See all",
                    style: TextStyle(
                        color: Color(0xff5C58FF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                    align: TextAlign.end),
              )
            ],
          ),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: 104,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListSlide(
                    text: "An Introduction to User Experience \nDesign. ",
                    text2: "| Anonymous",
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame12.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "A Designer’s guide to the tech \nindustry.",
                    text2: '| Anonymous',
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame13.png"),
                  ),
                  const Gap(8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
