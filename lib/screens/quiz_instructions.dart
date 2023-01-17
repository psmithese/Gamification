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
      ),
    );
  }
}
