import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String initialValue;
  final InputDecoration decoration;
  final FormFieldValidator<String> validator;

  const CustomTextFormField(
      {required this.initialValue,
      required this.decoration,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: decoration,
      validator: validator,
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        initialValue: "",
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: Color(0xff565656)),
            hintText: "you@gmail.com",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter a name";
          }
          return null;
        });
  }
}
