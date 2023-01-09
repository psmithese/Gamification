import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/home_screen.dart';
import 'package:gamification/widget/facebook_widget.dart';
import 'package:gamification/widget/linkdien_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gamification/widget/textformfield_widget.dart';
import 'package:gamification/widget/twitter_widget.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
                text: "Sign Up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                align: TextAlign.center),
            const Gap(37),
            Container(
              margin: const EdgeInsets.fromLTRB(3, 0, 0, 11),
              child: const CustomText(
                  text: "Enter email address",
                  style: TextStyle(color: Color(0xff9E9E9E)),
                  align: TextAlign.start),
            ),
            const Gap(11),
            const TextForm(),
            const Gap(23),
            Container(
              margin: const EdgeInsets.fromLTRB(1, 0, 1, 16),
              child: TextButton(
                onPressed: () {
                  goTo(context, const HomePage());
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: double.infinity,
                  height: 59,
                  decoration: BoxDecoration(
                      color: const Color(0xff8886fb),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: CustomText(
                        text: "Next",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            height: 1.2125),
                        align: TextAlign.start),
                  ),
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 16),
              child: Row(
                children: [
                  const CustomText(
                      text: "Already have an account? ",
                      style: TextStyle(color: Color(0xff7E7E7E)),
                      align: TextAlign.start),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const SignUpScreen();
                      })));
                    },
                    child: const CustomText(
                        text: "Sign in",
                        style: TextStyle(color: Color(0xff5C58FF)),
                        align: TextAlign.start),
                  ),
                ],
              ),
            ),
            const Gap(36),
            const Center(
              child: CustomText(
                  text: "Or",
                  style: TextStyle(color: Color(0xff5C58FF)),
                  align: TextAlign.center),
            ),
            const Gap(40),
            Container(
              margin: const EdgeInsets.fromLTRB(128, 0, 121, 47),
              padding: const EdgeInsets.fromLTRB(0, 1.12, 0, 5.24),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Facebook(),
                  LinkedIn(),
                  Twitter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
