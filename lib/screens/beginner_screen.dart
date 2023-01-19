import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/week1_screen.dart';
import 'package:gamification/screens/week2_screen.dart';
import 'package:gamification/widget/quiz_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class BeginnerQuizScreen extends StatelessWidget {
  const BeginnerQuizScreen({super.key});

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
                  text: "Beginner UI/UX Course \nCurriculum",
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
                  GestureDetector(
                    onTap: () => goTo(context, const WeekOneScreen()),
                    child: QuizWidget(
                      color: const Color(0xff50A2EE),
                      image: Image.asset("assets/images/Emojii.png"),
                      text: "WEEK",
                      text2: "1",
                      text3: "Fundamentals \nof UI/UX",
                    ),
                  ),
                  InkWell(
                    onTap: () => goTo(context, const WeekTwoScreen()),
                    child: QuizWidget(
                        color: const Color(0xff8482FF),
                        text: "WEEK",
                        image: Image.asset("assets/images/Emoji3.png"),
                        text2: "2",
                        text3: "Design Thinking"),
                  )
                ],
              ),
              const Gap(5),
              Row(
                children: [
                  const Gap(50),
                  QuizWidget(
                      color: const Color(0xff01D4A1),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji4.png"),
                      text2: "3",
                      text3: "Information\nArchitecture"),
                  QuizWidget(
                      color: const Color(0xffF58824),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji5.png"),
                      text2: "4",
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
