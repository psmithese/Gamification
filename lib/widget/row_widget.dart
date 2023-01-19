import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RowImage extends StatelessWidget {
  final Image image;
  final String text;
  final double left;
  final double right;
  final TextStyle style;
  const RowImage(
      {super.key,
      required this.image,
      required this.text,
      required this.left,
      required this.right,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: Row(
        children: [
          const Gap(11),
          image,
          const Gap(12),
          Text(
            text,
            style: style,
          )
        ],
      ),
    );
  }
}
