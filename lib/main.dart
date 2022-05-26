import 'package:flutter/material.dart';
import 'package:task_1/features/welcome/view/welcome_view.dart';

void main() {
  runApp(const ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: WelcomeView(),
      ),
    );
  }
}