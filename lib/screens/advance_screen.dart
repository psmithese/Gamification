import 'package:flutter/material.dart';
import 'package:gamification/widget/quiz_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class AdvancedScreen extends StatelessWidget {
  const AdvancedScreen({super.key});

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
                  text: "Advance UI/UX Course \nCurriculum",
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
                    text: "WEEK",
                    text2: "9",
                    color: const Color(0xff50A2EE),
                    image: Image.asset("assets/images/Emoji16.png"),
                    text3: "  Case study",
                  ),
                  QuizWidget(
                      color: const Color(0xff8482FF),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji17.png"),
                      text2: "10",
                      text3: " Project \n( UX PHASE )")
                ],
              ),
              const Gap(5),
              Row(
                children: [
                  const Gap(50),
                  QuizWidget(
                      color: const Color(0xff01D4A1),
                      text: "WEEK",
                      image: Image.asset("assets/images/Emoji18.png"),
                      text2: "11",
                      text3: "    Project \n   ( UI PHASE )"),
                  QuizWidget(
                      color: const Color(0xffF58824),
                      image: Image.asset("assets/images/Emoji4.png"),
                      text: "WEEK",
                      text2: "12",
                      text3: "Project \n( Testing and \nsubmission)")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
