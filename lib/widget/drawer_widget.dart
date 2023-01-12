import 'package:flutter/material.dart';

Widget drawer({
  required String text,
  required IconData icon,
}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;
  return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(
        text,
        style: const TextStyle(
            color: color, fontSize: 14, fontWeight: FontWeight.w600),
      ),
      hoverColor: hoverColor,
      onTap: () {});
}
