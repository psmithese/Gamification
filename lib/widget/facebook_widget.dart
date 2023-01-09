import 'package:flutter/material.dart';
import 'package:gamification/widget/text_widget.dart';

class Facebook extends StatelessWidget {
  const Facebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 6.94),
      padding: const EdgeInsets.fromLTRB(2.88, 2.88, 0, 2.3),
      width: double.infinity,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 10.24, 0),
          width: 28.76,
          height: 28.76,
          child: Image.asset(
            "assets/images/facebook.png",
            width: 28.76,
            height: 28.76,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 2.24, 0, 0),
          child: const CustomText(
              text: "Facebook",
              style: TextStyle(
                  color: Color(0xff7A7A7A),
                  fontSize: 15,
                  height: 1.2175,
                  fontWeight: FontWeight.w700),
              align: TextAlign.center),
        )
      ]),
    );
  }
}
