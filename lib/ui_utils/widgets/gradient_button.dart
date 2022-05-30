import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton(
      {Key? key,
        required this.width,
        required this.height,
        required this.text,
        required this.radius,
        required this.color_left,
        required this.color_right,
      }) : super(key: key);

  final double width;
  final double height;
  final double radius;
  final String text;
  final Color color_left;
  final Color color_right;
  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: RaisedButton(
        onPressed: () {},
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color_left, widget.color_right],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          ),
          child: Container(
            alignment: Alignment.center,
            child:  Text(widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                )),
          ),
        ),
      ),
    );
  }
}

