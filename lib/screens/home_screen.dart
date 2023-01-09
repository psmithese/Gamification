import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamification/helper/app_info_list.dart';
import 'package:gamification/helper/item.dart';
import 'package:gamification/helper/nav_function.dart';
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
                    Image.asset("assets/images/begin.png"),
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
            ],
          ),
        ),
      ),
    );
  }
}
