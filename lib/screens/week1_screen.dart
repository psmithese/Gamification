import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/text_screen.dart';
import 'package:gamification/screens/video_screen.dart';
import 'package:gamification/widget/list_widget.dart';
import 'package:gamification/widget/row_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class WeekOneScreen extends StatefulWidget {
  const WeekOneScreen({super.key});

  @override
  State<WeekOneScreen> createState() => _WeekOneScreenState();
}

class _WeekOneScreenState extends State<WeekOneScreen> {
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
            image: Image.asset("assets/images/Emojii.png"),
            text: "Week 1 - Fundamentals of UIUX",
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
                    text: "Distinguish between UI design and UX design",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Understand problem solving using UX design ",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Differentiate between “Good UX’ and “Bad UX ",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Know the different areas of UX (career-wise) ",
                    left: 0,
                    right: 0,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const Gap(21),
                  RowImage(
                    image: Image.asset("assets/images/Rectangle2.png"),
                    text: "Have an understanding of some laws of UX ",
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
              InkWell(
                onTap: () => goTo(context, const VideoListScreen()),
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
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: "| by Vaexperience ",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame4.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: '| by Jesse Showalter',
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame7.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "What Is UX Design? \nUnderstanding UX for beginners",
                    text2: "| by CareerFoundry",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame8.png"),
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
              InkWell(
                onTap: () => goTo(context, const TextListScreen()),
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
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: "| by Vaexperience ",
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame5.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: '| by Jesse Showalter',
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame7.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "What Is UX Design? \nUnderstanding UX for beginners",
                    text2: "| by CareerFoundry",
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame8.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "What Is UX Design? \nUnderstanding UX for beginners",
                    text2: "| by CareerFoundry",
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame8.png"),
                  ),
                  const Gap(8),
                  ListSlide(
                    text: "What Is UX Design? \nUnderstanding UX for beginners",
                    text2: "| by CareerFoundry",
                    text3: "Text",
                    text4: "Read",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame8.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
