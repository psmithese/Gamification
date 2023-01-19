import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListSlide extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final String text4;
  final Color color;
  final Image image;
  const ListSlide(
      {super.key,
      required this.text,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      // color: Colors.brown,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            image,
            const Gap(7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(3),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff585858)),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff585858)),
                ),
                Text(
                  text3,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff585858)),
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  text4,
                  style:
                      const TextStyle(fontSize: 15, color: Color(0xff8886FB)),
                ))
          ],
        ),
      ),
    );
  }
}
