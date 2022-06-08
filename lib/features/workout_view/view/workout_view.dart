import 'package:flutter/material.dart';
import 'package:task_1/ui_utils/widgets/gradient_button.dart';
import 'package:task_1/ui_utils/widgets/image_widget.dart';

import '../../../ui_utils/widgets/text_widget.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(left: 32),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: const TextWidget(text: "Profile", color: Color(0xff1D1617), width: 66, fontSize: 20, top: 0),
        centerTitle: true,
        actions: const [Padding(
          padding: EdgeInsets.only(right: 28),
          child: Icon(Icons.dehaze),
        )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffBFDBE9)
            ),
            width: 391,
            height: 472,
            child: const Padding(
              padding: EdgeInsets.only(left: 54),
              child: Center(child: ImageWidget(imageName: "assets/images/smart.png", top: 76, width: 268, height: 268)),
            ),
          ),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 163, top: 4),
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: const BoxDecoration(
                            color: Color(0xff1D1617),
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48, left: 29),
                      child: SizedBox(
                        height: 47,
                        width: 315,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  const [
                                TextWidget(
                                    text: "Fullbody Workout",
                                    color: Color(0xff1D1617),
                                    width: 146,
                                    fontSize: 16,
                                    top: 0),
                                TextWidget(
                                    text: "11 Exercises | 32 mins | 320 Calorories Burn",
                                    color: Color(0xff7B6F72),
                                    width: 240,
                                    fontSize: 12,
                                    top: 5),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23, left: 29),
                      child: Container(
                        height: 50,
                        width: 315,
                        decoration:  const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff9DCEFF),Color(0xff92A3FD)], ),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.calendar_today, color: Color(0xff7B6F72),size: 16.5,),
                              TextWidget(text: "Schedule Workout", color: Color(0xff7B6F72), width: 109, fontSize: 12, top: 0),

                              Padding(
                                padding: EdgeInsets.only(left: 46),
                                child: TextWidget(text: "5/27, 09:00 AM", color: Color(0xff7B6F72), width: 72, fontSize: 10, top: 0),
                              ),
                              Icon(Icons.keyboard_arrow_right,)
                            ],
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 29),
                      child: Container(
                        height: 50,
                        width: 315,
                        decoration:  const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffEEA4CE),Color(0xffC58BF2)], ),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.swap_vert, color: Color(0xff7B6F72),size: 22,),
                              TextWidget(text: "Difficulity", color: Color(0xff7B6F72), width: 55, fontSize: 12, top: 0),

                              Padding(
                                padding: EdgeInsets.only(left: 129),
                                child: TextWidget(text: "Beginner", color: Color(0xff7B6F72), width: 43, fontSize: 10, top: 0),
                              ),
                              Icon(Icons.keyboard_arrow_right,)
                            ],
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21, top: 31),
                      child: SizedBox(
                        height: 197,
                        width: 420,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                TextWidget(text: "You'll Need", color: Color(0xff1D1617), width: 91, fontSize: 16, top: 0),
                                Padding(
                                  padding: EdgeInsets.only(left: 179),
                                  child: TextWidget(text: "5 Items", color: Color(0xffADA4A5), width: 45, fontSize: 12, top: 3),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: SizedBox(
                                height: 158,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SizedBox(
                                      height: 158,
                                      width: 130,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration:  const BoxDecoration(
                                                color: Color(0xffF7F8F8),
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                boxShadow: [BoxShadow(color: Color(0xffF7F8F8))]
                                            ),
                                            height: 130,
                                            width: 130,
                                            child:  const Center(
                                                child: ImageWidget(
                                                    imageName: "assets/images/barbel.png",
                                                    top: 0,
                                                    width: 66,
                                                    height: 53
                                                )
                                            ),
                                          ),
                                          const TextWidget(text: "Barbel", color: Colors.black, width: 42, fontSize: 12, top: 10)
                                        ],
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15, right: 15),
                                      child: SizedBox(
                                        height: 158,
                                        width: 130,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration:  const BoxDecoration(
                                                  color: Color(0xffF7F8F8),
                                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                                  boxShadow: [BoxShadow(color: Color(0xffF7F8F8))]
                                              ),
                                              height: 130,
                                              width: 130,
                                              child:  const Center(
                                                  child: ImageWidget(
                                                    imageName: "assets/images/skipping-rope.png",
                                                    top: 0,
                                                    width: 61,
                                                    height: 77.3,
                                                  )
                                              ),
                                            ),
                                            const TextWidget(text: "Skipping Rope", color: Colors.black, width: 85, fontSize: 12, top: 10)
                                          ],
                                        ),

                                      ),
                                    ),
                                    SizedBox(
                                      height: 158,
                                      width: 130,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration:  const BoxDecoration(
                                                color: Color(0xffF7F8F8),
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                boxShadow:  [BoxShadow(color: Color(0xffF7F8F8))]
                                            ),
                                            height: 130,
                                            width: 130,
                                            child:  const Center(
                                                child: ImageWidget(
                                                  imageName: "assets/images/water-bottle.png",
                                                  top: 0,
                                                  width: 22.85,
                                                  height: 75.67,
                                                )
                                            ),
                                          ),
                                          const TextWidget(text: "Botle Lite", color: Colors.black, width: 76, fontSize: 12, top: 10)
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 31, left: 29),
                      child: SizedBox(
                        height: 850,
                        width: 315,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                TextWidget(text: "Exercises", color: Color(0xff1D1617), width: 75, fontSize: 16, top: 0),
                                Padding(
                                  padding: EdgeInsets.only(left: 204),
                                  child: TextWidget(text: "3 Sets", color: Color(0xffADA4A5), width: 36, fontSize: 12, top: 3),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(text: "Set 1", color: Color(0xff1D1617), width: 29, fontSize: 12, top: 20),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: SizedBox(
                                    height: 435,
                                    width: 311,
                                    child: ListView(
                                      children:  const <Widget>[
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Warm Up", color: Color(0xff1D1617), width: 67, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "05:00", color: Color(0xff7B6F72), width: 34, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport6.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Jumping Jack", color: Color(0xff1D1617), width: 101, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "12x", color: Color(0xff7B6F72), width: 18, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport5.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "skipping", color: Color(0xff1D1617), width: 62, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "15x", color: Color(0xff7B6F72), width: 18, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport4.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Squats", color: Color(0xff1D1617), width: 50, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "20x", color: Color(0xff7B6F72), width: 21, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport3.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Arm Raises", color: Color(0xff1D1617), width: 79, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "00:53", color: Color(0xff7B6F72), width: 34, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport2.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Rest and Drink", color: Color(0xff1D1617), width: 102, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "02:00", color: Color(0xff7B6F72), width: 33, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport1.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const TextWidget(text: "Set 2", color: Color(0xff1D1617), width: 30, fontSize: 12, top: 20),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: SizedBox(
                                    height: 285,
                                    width: 311,
                                    child: ListView(
                                      children:  const <Widget>[
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Incline Push-Ups", color: Color(0xff1D1617), width: 119, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "12x", color: Color(0xff7B6F72), width: 18, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport9.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Push-Ups", color: Color(0xff1D1617), width: 69, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "15x", color: Color(0xff7B6F72), width: 18, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport8.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "skipping", color: Color(0xff1D1617), width: 62, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "15x", color: Color(0xff7B6F72), width: 18, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport4.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                        ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: TextWidget(text: "Cobra Stretch", color: Color(0xff1D1617), width: 99, fontSize: 14, top: 0),
                                            subtitle: TextWidget(text: "20x", color: Color(0xff7B6F72), width: 21, fontSize: 12, top: 5),
                                            leading: ImageWidget(imageName: "assets/images/sport7.png", top: 0, width: 60, height: 60),
                                            trailing: Icon(Icons.arrow_circle_right_rounded)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
          ),
        ],
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 53),
        child: GradientButton(width: 315, height: 60, fontSize: 16, text: "Start Workout", radius: 99, colorLeft: Color(0xff9DCEFF), colorRight: Color(0xff92A3FD), left: 85),
      )
    );
  }
}
