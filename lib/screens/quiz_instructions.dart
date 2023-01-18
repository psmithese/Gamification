import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Quiz_Instruction extends StatefulWidget {
  const Quiz_Instruction({super.key});

  @override
  State<Quiz_Instruction> createState() => _Quiz_InstructionState();
}

class _Quiz_InstructionState extends State<Quiz_Instruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.603, -1.444),
            end: Alignment(0.91, 1.479),
            colors: <Color>[
              Color(0xff33000000),
              Color(0xff33000000),
            ],
            stops: <double>[1, 0],
          ),
        ),
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
                    Color(0xff4BCC9D),
                    Color(0xffB228D8),
                  ],
                  stops: <double>[0, 1],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 30,
                      color: Color(0xffF1F1F1),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    "🏆LET'S PLAY🏆",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF1F1F1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
