import 'package:flutter/material.dart';

Widget beginer(
    {required String url,
    required String title,
    required String subtitle,
    required String subtitle1,
    required String button}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      height: 118,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(children: [
        Positioned(
          top: 3,
          left: 6,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(url),
              ),
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),

        Positioned(
          top: 5,
          left: 120,
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff212121)),
          ),
        ),

        Positioned(
          left: 120,
          top: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff7A7A7A)),
              ),
              Text(
                subtitle1,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff7A7A7A)),
              ),
            ],
          ),
        ),
        Positioned(
          right: 12,
          bottom: 12,
          child: Container(
            // alignment: Alignment.bottomRight,
            height: 23,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                border: Border.all(color: const Color(0xff8886FB))),
            child: Center(
              child: Text(
                button,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    color: Color(0xff8886FB),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        // trailing: InkWell(
        //   onTap: () {},
        //   child: Container(
        //     height: 68,
        //     width: 23,
        //     decoration: BoxDecoration(
        //         border: Border.all(color: const Color(0xff8886FB)),
        //         borderRadius: const BorderRadius.all(Radius.circular(10))),
        //     child: Text(
        //       button,
        //       style: const TextStyle(
        //           fontFamily: 'Inter',
        //           fontSize: 12,
        //           color: Color(0xff8886FB),
        //           fontWeight: FontWeight.w500),
        //     ),
        //   ),
        // ),
      ]),
    ),
  );
}
