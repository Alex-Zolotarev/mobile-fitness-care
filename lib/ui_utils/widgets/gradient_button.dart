import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  //Icons? icon;
   const GradientButton(
      {
        Key? key,
        //this.icon,
        required this.width,
        required this.height,
        required this.fontSize,
        required this.text,
        required this.radius,
        required this.color_left,
        required this.color_right,
        required this.left,

      }) : super(key: key);

  final double fontSize;
  final double width;
  final double height;
  final double left;
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius)),
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
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                child:  Padding(
                  padding:  EdgeInsets.only(left: widget.left),
                  child: Text(widget.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: widget.fontSize,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      )
                  ),
                ),
              ),
              //Icon(widget.icon)

            ],
          ),
        ),
      ),
    );
  }
}

