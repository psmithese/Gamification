import 'package:flutter/material.dart';
import 'package:gamification/helper/app_layout.dart';
import 'package:gamification/helper/app_style.dart';

class VideoScreen extends StatelessWidget {
  final Map<String, dynamic> videos;
  const VideoScreen({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.4,
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      margin: const EdgeInsets.only(top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${videos['image']}"))),
          ),
        ],
      ),
    );
  }
}
