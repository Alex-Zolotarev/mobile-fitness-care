import 'package:flutter/material.dart';

import 'features/create_profile/create_profile.dart';
import 'features/create_profile/view/create_profile_view.dart';
import 'features/my_profile/view/my_profile_view.dart';
import 'features/workout_view/view/workout_view.dart';


void main() {
  runApp(const ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
      //   //appBar: AppBar(),
        body: WorkoutView(),
      //   body: MyProfileView(),
      ),
    );
  }
}