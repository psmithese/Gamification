import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamification/helper/app_info_list.dart';
import 'package:gamification/helper/item.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/beginner_screen.dart';
import 'package:gamification/screens/guide_screen.dart';
import 'package:gamification/screens/videos_screen.dart';
import 'package:gamification/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/menu.png"),
                    Image.asset("assets/images/Bell.png")
                  ],
                ),
              ),
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
                          borderSide: BorderSide(width: 1.8),
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
                      width: 20,
                    ),
                    Image.asset("assets/images/inter.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/advance.png")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                        text: "Beginners guide",
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
              GestureDetector(
                onTap: () {
                  goTo(context, const GuideScreen());
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
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
                margin: const EdgeInsets.fromLTRB(1, 0, 1, 20),
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
                      margin: const EdgeInsets.fromLTRB(0, 14, 22, 33),
                      width: 163,
                      height: double.infinity,
                      child: Stack(
                        children: const [
                          Positioned(
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
                                ),
                              ))
                        ],
                      ),
                    ),
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

// Container(
//   // quickquizDQB (175:2266)
//   margin:  EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 20*fem),
//   padding:  EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 0*fem),
//   width:  double.infinity,
//   height:  117*fem,
//   decoration:  BoxDecoration (
//     borderRadius:  BorderRadius.circular(10*fem),
//     gradient:  LinearGradient (
//       begin:  Alignment(-0.603, -1.444),
//       end:  Alignment(0.91, 1.479),
//       colors:  <Color>[Color(0xff41d9b5), Color(0xff3e3ef1)],
//       stops:  <double>[0, 1],
//     ),
//   ),
//   child:
// Row(
//   crossAxisAlignment:  CrossAxisAlignment.center,
//   children:  [
// Container(
//   // autogroupeh2o5SP (DPBwDPR6iFbbAkH95YEh2o)
//   margin:  EdgeInsets.fromLTRB(0*fem, 14*fem, 22*fem, 33*fem),
//   width:  163*fem,
//   height:  double.infinity,
//   child:
// Stack(
//   children:  [
// Positioned(
//   // comeonletsplaycSK (328:2532)
//   left:  30*fem,
//   top:  0*fem,
//   child:
// Align(
//   child:
// SizedBox(
//   width:  133*fem,
//   height:  70*fem,
//   child:
// Text(
//   'COME ON,\nLET’S PLAY',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Quicksand',
//     fontSize:  28*ffem,
//     fontWeight:  FontWeight.w700,
//     height:  1.25*ffem/fem,
//     letterSpacing:  0.1120000017*fem,
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // rectanglehTm (373:4594)
//   left:  0*fem,
//   top:  12*fem,
//   child:
// Align(
//   child:
// SizedBox(
//   width:  36.18*fem,
//   height:  37*fem,
//   child:
// Image.network(
//   [Image url]
//   fit:  BoxFit.cover,
// ),
// ),
// ),
// ),
//   ],
// ),
// ),
// Container(
//   // autogroupdico2kw (DPBwWJ6bKQVAcZAsUzdiCo)
//   width:  145*fem,
//   height:  132*fem,
//   child:
// Image.network(
//   [Image url]
//   width:  145*fem,
//   height:  132*fem,
// ),
// ),
//   ],
// ),
// ),
