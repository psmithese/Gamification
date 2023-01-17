import 'package:flutter/material.dart';
import 'package:gamification/widget/beginers_widget.dart';

class BeginnerQuizScreen extends StatelessWidget {
  const BeginnerQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color(0xffF1F1F1),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 60, 0, 0),
                height: 130,
                width: double.infinity,
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment(-0.603, -1.444),
                    end: Alignment(0.91, 1.479),
                    colors: <Color>[
                      Color(0xff3A35FF),
                      Color(0xffD95E00),
                    ],
                    stops: <double>[0, 1],
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 30,
                        color: Color(0xffF1F1F1),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Beginers Guide',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffF1F1F1)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              beginer(
                  url: 'assets/images/steal.png',
                  title: 'Steal like an Artist',
                  subtitle: 'Austin Kleon',
                  subtitle1: 'Text',
                  button: 'Read'),
              const SizedBox(
                  //height: 2,
                  ),
              beginer(
                  url: 'assets/images/youtube2.png',
                  title: 'Figma UI Design Tutorial',
                  subtitle: 'AJ & Smart',
                  subtitle1: 'Youtube Video',
                  button: 'Watch'),
              beginer(
                  url: 'assets/images/textimg.png',
                  title: 'Design Rules book',
                  subtitle: 'Anonymous',
                  subtitle1: 'Text',
                  button: 'Read'),
              beginer(
                  url: 'assets/images/youtube3.png',
                  title: 'Intro To Figma',
                  subtitle: 'Jesse Showwalter',
                  subtitle1: 'YouTube Video',
                  button: 'Watch'),
              beginer(
                  url: 'assets/images/youtube4.png',
                  title: 'Ultimate Figma crash course 2022',
                  subtitle: 'DesignCourse',
                  subtitle1: 'DesignCourse',
                  button: 'Watch')
            ],
          ),
        ),
      ),
    );
  }
}
