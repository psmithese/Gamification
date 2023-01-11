import 'package:flutter/material.dart';
import 'package:gamification/widget/text_widget.dart';

class BeginnerQuizScreen extends StatelessWidget {
  const BeginnerQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/book.png"),
              const CustomText(
                  text: "Intermediate",
                  style: TextStyle(),
                  align: TextAlign.left)
            ],
          )
        ],
      ),
    );
  }
}
