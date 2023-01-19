import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuizWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Image image;
  final String text2;
  final String text3;
  const QuizWidget(
      {super.key,
      required this.color,
      required this.text,
      required this.image,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(2, 2, 10, 5),
            width: 146,
            height: 146,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(13.87)),
            child: Column(
              children: [
                const Gap(10),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const Gap(5),
                Text(
                  text2,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      image,
                      Text(
                        text3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
