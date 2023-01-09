import 'package:flutter/material.dart';
import 'package:gamification/widget/text_widget.dart';

class Twitter extends StatelessWidget {
  const Twitter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(3, 0, 9, 0),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame448G5p (33:1757)
            margin: const EdgeInsets.fromLTRB(0, 0, 12.24, 0),
            width: 28.76,
            height: 28.76,
            child: Image.asset(
              "assets/images/twitter.png",
              width: 28.76,
              height: 28.76,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 2.24, 0, 0),
            child: const CustomText(
                text: "Twitter",
                style: TextStyle(
                    color: Color(0xff7A7A7A),
                    fontSize: 15,
                    height: 1.2175,
                    fontWeight: FontWeight.w700),
                align: TextAlign.center),
          )
        ],
      ),
    );
  }
}
