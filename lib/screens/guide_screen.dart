import 'package:flutter/material.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(132, 93, 57, 239),
        leading: const Icon(
          Icons.arrow_circle_left_outlined,
          size: 30,
        ),
        title: const Text(
          "Beginners guide",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Row(
              children: [
                Image.asset(
                  "assets/images/one.png",
                  scale: 7,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
