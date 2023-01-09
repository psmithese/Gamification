import 'package:flutter/material.dart';
import 'package:gamification/screens/signup_screen.dart';
import 'package:gamification/widget/text_widget.dart';

class Sign extends StatelessWidget {
  const Sign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 16),
      child: Row(
        children: [
          const CustomText(
              text: "Don't have an account? ",
              style: TextStyle(color: Color(0xff7E7E7E)),
              align: TextAlign.start),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const SignUpScreen();
              })));
            },
            child: const CustomText(
                text: "Sign Up",
                style: TextStyle(color: Color(0xff5C58FF)),
                align: TextAlign.start),
          ),
        ],
      ),
    );
  }
}
