import 'package:flutter/material.dart';
import 'package:gamification/widget/list_widget.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:gap/gap.dart';

class WeekWidget extends StatelessWidget {
  final String text1;
  final Image image1;
  final Color color1;
  final String text2;
  final Image image2;
  final Image image6;
  final Image image7;
  final Color color2;
  final String text3;
  final String text10;
  final Image image3;
  final String text4;
  final Image image4;
  final String text5;
  final Image image5;
  final String text6;
  final String text7;
  final String text8;
  final String text9;
  final String textt2;
  final String textt3;
  final String textt4;
  final String textt5;
  final String textt11;
  final String textt12;

  //final TextStyle style;

  const WeekWidget({
    super.key,
    required this.text1,
    required this.image1,
    required this.color1,
    required this.text2,
    required this.image2,
    required this.color2,
    required this.text3,
    required this.image3,
    required this.text4,
    required this.image4,
    required this.text5,
    required this.image5,
    required this.text6,
    required this.text7,
    required this.text8,
    required this.text9,
    required this.textt2,
    required this.textt3,
    required this.textt4,
    required this.textt5,
    required this.text10,
    required this.image6,
    required this.image7,
    required this.textt11,
    required this.textt12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        
  
        const Gap(21),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              image4,
              const Gap(10),
              Text(
                text4,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Gap(160),
              Text(
                text5,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5C58FF)),
              )
            ],
          ),
        ),
        const Gap(13.5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 104,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListSlide(
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: "| by Vaexperience ",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame4.png")),
                const Gap(8),
                ListSlide(
                    text: "Choosing the Right Path to UX: \nBad and Good UX",
                    text2: '| by Jesse Showalter',
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame7.png")),
                const Gap(8),
                ListSlide(
                    text: "What Is UX Design? \nUnderstanding UX for beginners",
                    text2: "| by CareerFoundry",
                    text3: "Youtube",
                    text4: "Watch",
                    color: Colors.white,
                    image: Image.asset("assets/images/Frame8.png"))
              ],
            ),
          ),
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/Emojica.png",
              height: 45,
            ),
            const CustomText(
                text: "Text Materials",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                align: TextAlign.end),
            const Gap(160),
            const CustomText(
                text: "See all",
                style: TextStyle(
                    color: Color(0xff5C58FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
                align: TextAlign.end),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 104,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image5,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              text6,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text7,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image6,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              text6,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text10,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image7,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              textt11,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              textt12,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image7,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              textt11,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              textt12,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image7,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              textt11,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              textt12,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  width: 370,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                      color: color2, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image7,
                        const Gap(7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(3),
                            Text(
                              textt11,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              textt12,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                            Text(
                              text8,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff585858)),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              text9,
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff8886FB)),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
