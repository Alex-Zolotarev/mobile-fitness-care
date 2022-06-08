import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TogleButtom extends StatefulWidget {
  const TogleButtom({Key? key}) : super(key: key);

  @override
  State<TogleButtom> createState() => _TogleButtomState();
}

class _TogleButtomState extends State<TogleButtom> {
  final bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: _value,
        onChanged: (bool value) {  },
        activeColor: Color(0xffC58BF2),
      ),
    );
  }
}
