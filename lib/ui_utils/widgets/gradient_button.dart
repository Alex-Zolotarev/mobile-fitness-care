import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      height: 60,
      child: RaisedButton(
        onPressed: () {},
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(99.0)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(99.0)),
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text('Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
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

