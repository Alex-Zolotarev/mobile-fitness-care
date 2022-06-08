import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  const SearchButton(
      {
        Key? key,
        this.onTap,
        required this.height,
        required this.width,
      }) : super(key: key);

  final void Function()? onTap;
  final double height;
  final double width;

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      decoration:  const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff9DCEFF),Color(0xff92A3FD) ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(99)),
      ),
      child: const Icon(Icons.search),
    );
  }
}
