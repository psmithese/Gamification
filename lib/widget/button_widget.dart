import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final ButtonStyle color;
  final double size;

  const CustomElevatedButton(
      {required this.text, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: color,
      onPressed: () {},
      child: Text(text),
    );
  }
}
