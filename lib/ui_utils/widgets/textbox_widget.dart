import 'package:flutter/material.dart';


class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget(
      {Key? key,
        required this.text,
        required this.icon,
      }) : super(key: key);

  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF7F8F8), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(14.0)),
          ),
          border: OutlineInputBorder(),
          hintText: text,
          fillColor: Color(0xffF7F8F8),
          filled: true,
          prefixIcon: icon,
        ),
      ),
    );
  }
}

