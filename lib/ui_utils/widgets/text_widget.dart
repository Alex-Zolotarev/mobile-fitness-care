import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
        required this.text,
        required this.color,
        required this.width,
        required this.fontSize,
        required this.top})
      : super(key: key);

  final String text;
  final Color color;
  final double width;
  final double fontSize;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      width: width,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}