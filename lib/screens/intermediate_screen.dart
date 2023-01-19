import 'package:flutter/material.dart';
import 'package:gamification/widget/quiz_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class IntermediateScreen extends StatelessWidget {
  const IntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Gap(20),
          Row(
            children: [
              Image.asset(
                "assets/images/book.png",
                height: 45,
              ),
              const CustomText(
                  text: "Intermediate UI/UX Course \nCurriculum",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  align: TextAlign.left)
            ],
          ),
          const Gap(20),
          Column(
            children: [
              Row(
                children: [
                  const Gap(50),
                  QuizWidget(
                    color: const Color(0xffA714ED),
                    image: Image.asset("assets/images/Emoji11.png"),
                    text: "WEEK",
                    text2: "5",
                    text3: "Introduction to \nUI Design (1)",
                  ),
                  QuizWidget(
                      color: const Color(0xff025ECA),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji13.png"),
                      text2: "6",
                      text3: "Introduction to \nUI Design (2)")
                ],
              ),
              const Gap(5),
              Row(
                children: [
                  const Gap(50),
                  QuizWidget(
                      color: const Color(0xffDA046A),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji14.png"),
                      text2: "7",
                      text3: "Information\nArchitecture"),
                  QuizWidget(
                      color: const Color(0xffD15700),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji15.png"),
                      text2: "8",
                      text3: "User Testing \nand heuristics \nevaluation")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
