import 'package:flutter/material.dart';
import 'package:gamification/widget/text_widget.dart';

class LinkedIn extends StatelessWidget {
  const LinkedIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(3, 0, 8, 9.24),
      width: double.infinity,
      height: 28.76,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame447wQv (33:1749)
            margin: const EdgeInsets.fromLTRB(0, 0, 10.24, 0),
            width: 28.76,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff262629),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: CustomText(
                  text: "in",
                  style: TextStyle(
                      color: Color(0xff7A7A7A),
                      fontSize: 15,
                      height: 1.2175,
                      fontWeight: FontWeight.w700),
                  align: TextAlign.center),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 2.24, 0, 0),
            child: const CustomText(
                text: "LinkedIn",
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
