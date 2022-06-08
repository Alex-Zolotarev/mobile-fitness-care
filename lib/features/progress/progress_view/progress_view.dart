import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui_utils/widgets/text_widget.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    color: Color(0xffF7F8F8)
                ),
                child: Icon(Icons.arrow_back_ios, size: 16,)
            ),
          ),
          title: const TextWidget(text: "Result",
              color: Color(0xff1D1617),
              width: 52,
              fontSize: 16,
              top: 0),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 52),
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(color: Color(0xffF7F8F8)),
                  child: const Icon(Icons.share, size: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(color: Color(0xffF7F8F8)),
                  child: const Icon(Icons.more_horiz, size: 10)),
            ),
          ],
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 315,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(99)),
                    color: Color(0xffF7F8F8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: _Button(text: 'Photo', onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        isEnabled: selectedIndex == 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: _Button(text: 'Statistic', onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                          isEnabled: selectedIndex == 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({required this.text, required this.onTap, required this.isEnabled, Key? key})
      : super(key: key);

  final String text;
  final void Function() onTap;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 40,
        decoration: isEnabled ? const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(99)),
            gradient: LinearGradient(
              colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
            ),
        ) : null,
        child: Center(child: Text(text)),
      ),
    );
  }
}

