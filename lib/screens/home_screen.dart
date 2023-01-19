import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:gamification/helper/app_info_list.dart';
import 'package:gamification/helper/item.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/advance_screen.dart';
import 'package:gamification/screens/beginner_guide.dart';
import 'package:gamification/screens/beginner_screen.dart';
import 'package:gamification/screens/guide_screen.dart';
import 'package:gamification/screens/intermediate_screen.dart';
import 'package:gamification/screens/videos_screen.dart';
import 'package:gamification/widget/drawer_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _scafoldKey = GlobalKey();
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Image.asset('assets/images/Bell.png'),
            )
          ],
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset(
                  'assets/images/menu.png',
                  //scale: 30,
                ));
          })),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.8,
        decoration: const BoxDecoration(
            color: Color(0xff5C58FF),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(200))),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            drawer(
              text: 'My Dashboard',
              icon: (Icons.person_outline_rounded),
            ),
            drawer(
                text: 'Course curriculum', icon: Icons.calendar_month_outlined),
            drawer(
              text: 'Leadearboards',
              icon: Fontelico.crown,
            ),
            drawer(text: 'My Grades', icon: Icons.grade_outlined),
            drawer(text: 'Settings', icon: Icons.settings_outlined),
            drawer(text: 'Feedback', icon: Icons.email_outlined),
            const SizedBox(
              height: 250,
            ),
            drawer(text: 'Log Out', icon: Icons.logout_outlined)
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GestureDetector(
              //           onTap: () {
              //             //  _scafoldKey.currentState.op;
              //           },
              //           child: Image.asset("assets/images/menu.png")),
              //       Image.asset("assets/images/Bell.png")
              //     ],
              //   ),
              // ),
              const Gap(40),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 46,
                width: double.infinity,
                clipBehavior: Clip.none,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search topics',
                        hintStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffD1D1D1)),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          borderSide: const BorderSide(
                              width: 1.8, color: Color(0xffDFDFDF)),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/Search.png',
                            color: const Color(0xff8482FF),
                            width: 40,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/filter1.png"))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 3.0,
                  onPageChanged: ((index, reason) {
                    setState(
                      () {
                        setState(() {
                          _current = index;
                        });
                      },
                    );
                  }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return Container(
                    width: 8.0,
                    height: 20.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? const Color(0xff8886FB)
                                : const Color(0xff8886FB))
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(19, 21, 18, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() => goTo(context, const BeginnerQuizScreen())),
                      child: Image.asset("assets/images/begin.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () => goTo(context, const IntermediateScreen()),
                        child: Image.asset("assets/images/inter.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () => goTo(context, const AdvancedScreen()),
                        child: Image.asset("assets/images/advance.png"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                        text: "Beginners guide",
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 88, 88),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        align: TextAlign.end),
                    InkWell(
                      onTap: () => goTo(context, const BeginnerGuide()),
                      child: const CustomText(
                          text: "See all",
                          style: TextStyle(
                              color: Color(0xff5C58FF),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                          align: TextAlign.end),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  goTo(context, const GuideScreen());
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                      children: videoList
                          .map(
                              (singleVideo) => VideoScreen(videos: singleVideo))
                          .toList()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                        text: "Quick quiz",
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 88, 88),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        align: TextAlign.end),
                    CustomText(
                        text: "See all",
                        style: TextStyle(
                            color: Color(0xff5C58FF),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                        align: TextAlign.end),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                width: double.infinity,
                height: 117,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment(-0.603, -1.444),
                    end: Alignment(0.91, 1.479),
                    colors: <Color>[
                      Color(0xff41d9b5),
                      Color(0xff3e3ef1),
                    ],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 14, 80, 33),
                      width: 163,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 30,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 133,
                                height: 70,
                                child: CustomText(
                                    text: "COME ON,\nLET’S PLAY",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        height: 1.25,
                                        letterSpacing: 0.1120000017),
                                    align: TextAlign.center),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 12,
                            child: Align(
                              child: SizedBox(
                                width: 36.18,
                                height: 37,
                                child: ClipRRect(
                                  // borderRadius: const BorderRadius.all(
                                  //     Radius.circular(15.0)),
                                  child: Image.asset(
                                    "assets/images/Rectangle.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 145,
                        height: 132,
                        child: Image.asset(
                          "assets/images/Emoji1.png",
                          width: 145,
                          height: 132,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
