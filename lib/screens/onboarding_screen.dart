import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/main.dart';
import 'package:gamification/screens/home_screen.dart';
import 'package:gamification/screens/signin_screen.dart';
import 'package:introduction_slider/source/source.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.nightlight_round),
                        onPressed: () {
                          themeMode.value = themeMode.value == 1 ? 2 : 1;
                        }),
                    const Text(
                      'Skip',
                      style: TextStyle(
                          color: Color(0xff8482FF),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IntroductionSlider(
                items: [
                  IntroductionSliderItem(
                    logo: Image.asset(
                      "assets/images/Game1.png",
                      scale: 1.5,
                    ),
                    title: const Text(
                      "Get access to a strategically \nstructured tutorial and materials in a \nGAMIFIED environment to help groom \nyou into professionals in the tech space.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 102, 102),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    // backgroundColor: Colors.black,
                  ),
                  IntroductionSliderItem(
                    logo: Image.asset("assets/images/Frame1.png"),
                    title: const Text(
                      "Take time-constrained assessments \nbased on the materials completed to \nimprove on yourself and move to the next level and get scores in Realtime \n.You can choose to retake test when \nnecessary ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 102, 102),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    //backgroundColor: Colors.black,
                  ),
                  IntroductionSliderItem(
                    logo: Image.asset("assets/images/Frame3.png"),
                    title: const Text(
                      "Get rewards based on your \nperformance on assessments, top \nthe community leaderboard and \nshare progress with friends on social \nmedia . Celebrate your small wins on \nyour way to the top because you \ndeserve it.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 102, 102),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    // backgroundColor: Colors.black,
                  ),
                ],
                done: Done(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff5C58FF))),
                      onPressed: () {
                        goTo(context, const SignInScreen());
                      },
                      child: const Text("SignUp")),
                  home: const HomePage(),
                ),
                next: const Next(
                    child: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30.0,
                  color: Color(0xff8482FF),
                )),
                back: const Back(
                    child: Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 30.0,
                  color: Color(0xff8482FF),
                )),
                dotIndicator: const DotIndicator(
                    selectedColor: Color(0xff8482FF),
                    unselectedColor: Colors.grey,
                    size: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
