import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/home_screen.dart';
import 'package:gamification/screens/signup_screen.dart';
import 'package:gamification/widget/facebook_widget.dart';
import 'package:gamification/widget/linkdien_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gamification/widget/twitter_widget.dart';

import '../widget/textformfield_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 44, 0, 0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 32),
                  child: const Text('Sign in',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
                        color: Color(0xffffffff),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(23, 0, 25, 23),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(3, 0, 0, 11),
                        child: const CustomText(
                            text: "Enter email address",
                            style: TextStyle(color: Color(0xff9E9E9E)),
                            align: TextAlign.start),
                      ),
                      const TextForm(),
                      const SizedBox(
                        height: 23,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(3, 0, 0, 11),
                        child: const CustomText(
                            text: "Password",
                            style: TextStyle(color: Color(0xff9E9E9E)),
                            align: TextAlign.start),
                      ),
                      CustomTextFormField(
                          initialValue: "",
                          decoration: InputDecoration(
                              hintStyle:
                                  const TextStyle(color: Color(0xff565656)),
                              hintText: "Your Password ?",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a name";
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 9.5,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(3, 0, 0, 11),
                        child: const CustomText(
                            text: "Forget Password ?",
                            style: TextStyle(color: Color(0xff5C58FF)),
                            align: TextAlign.start),
                      ),
                      const SizedBox(
                        height: 21.5,
                      ),
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
                                  text: "Sign in",
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
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 16),
                        child: Row(
                          children: [
                            const CustomText(
                                text: "Don't have an account? ",
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
                                  text: "Sign Up",
                                  style: TextStyle(color: Color(0xff5C58FF)),
                                  align: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      const Center(
                        child: CustomText(
                            text: "Or",
                            style: TextStyle(color: Color(0xff5C58FF)),
                            align: TextAlign.center),
                      ),
                      const SizedBox(
                        height: 31.12,
                      ),
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
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 239.99, 0),
                  width: 133.10,
                  height: 85,
                  child: Image.asset(
                    "assets/images/Vectord.png",
                    width: 133.10,
                    height: 90,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
