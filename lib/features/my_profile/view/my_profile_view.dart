import 'package:flutter/material.dart';
import 'package:task_1/ui_utils/widgets/gradient_button.dart';
import 'package:task_1/ui_utils/widgets/image_widget.dart';
import 'package:task_1/ui_utils/widgets/search_buttom.dart';
import 'package:task_1/ui_utils/widgets/text_widget.dart';
import 'package:task_1/ui_utils/widgets/togle_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
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
      ),
        body: Column(
          children:  [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    border: Border.all(
                      color: Color(0xff95ADFE),
                      width: 3,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: ImageWidget(imageName: "assets/images/face.png", top: 0, width: 75, height: 75),
                  ),
                ),
              ),
            ),
            const TextWidget(text: "Monica Gamage", color: Color(0xff1D1617), width: 131, fontSize: 15, top: 9),
            const TextWidget(text: "Lose a fat progreme", color: Color(0xff7B6F72), width: 121, fontSize: 12, top: 5),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: GradientButton(width: 83, height: 30, text: "Edit", fontSize: 12, radius: 99, colorLeft: Color(0xff9DCEFF), colorRight: Color(0xff92A3FD), left: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 23, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 65,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [BoxShadow(color: Colors.white)]
                    ),
                    child: Column(
                      children: const [
                        TextWidget(text: "180cm", color: Color(0xff92A3FD), width: 46, fontSize: 14, top: 11),
                        TextWidget(text: "Height", color: Color(0xff7B6F72), width: 39, fontSize: 12, top: 5),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [BoxShadow(color: Colors.white)]
                    ),
                    child: Column(
                      children: const [
                        TextWidget(text: "65kg", color: Color(0xff92A3FD), width: 36, fontSize: 14, top: 11),
                        TextWidget(text: "Weight", color: Color(0xff7B6F72), width: 43, fontSize: 12, top: 5),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [BoxShadow(color: Colors.white)]
                    ),
                    child: Column(
                      children: const [
                        TextWidget(text: "22yo", color: Color(0xff92A3FD), width: 34, fontSize: 14, top: 11),
                        TextWidget(text: "Age", color: Color(0xff7B6F72), width: 24, fontSize: 12, top: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 23, right: 24),
              child: Container(
                height: 189,
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.white)]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: TextWidget(text: "Account", color: Color(0xff1D1617), width: 69, fontSize: 16, top: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: SizedBox(
                        height: 20,
                        width: 280,
                        child: Row(
                          children: const [
                            Icon(Icons.perm_identity, color: Color(0xff92A3FD),size: 20,),
                            TextWidget(text: "Personal Data", color: Color(0xff7B6F72), width: 84, fontSize: 12, top: 0),
                            Padding(
                              padding: EdgeInsets.only(left: 148),
                              child: Icon(Icons.arrow_forward_ios_sharp, size: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: SizedBox(
                        height: 20,
                        width: 280,
                        child: Row(
                          children: const [
                            Icon(Icons.receipt, color: Color(0xff92A3FD),size: 20,),
                            TextWidget(text: "Achievement", color: Color(0xff7B6F72), width: 80, fontSize: 12, top: 0),
                            Padding(
                              padding: EdgeInsets.only(left: 152),
                              child: Icon(Icons.arrow_forward_ios_sharp, size: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: SizedBox(
                        height: 20,
                        width: 280,
                        child: Row(
                          children: const [
                            Icon(Icons.timelapse, color: Color(0xff92A3FD),size: 20,),
                            TextWidget(text: "Activity History", color: Color(0xff7B6F72), width: 88, fontSize: 12, top: 0),
                            Padding(
                              padding: EdgeInsets.only(left: 144),
                              child: Icon(Icons.arrow_forward_ios_sharp, size: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: SizedBox(
                        height: 20,
                        width: 280,
                        child: Row(
                          children: const [
                            Icon(Icons.assessment, color: Color(0xff92A3FD),size: 20,),
                            TextWidget(text: "Workout Progress", color: Color(0xff7B6F72), width: 105, fontSize: 12, top: 0),
                            Padding(
                              padding: EdgeInsets.only(left: 127),
                              child: Icon(Icons.arrow_forward_ios_sharp, size: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 5, right: 24),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.white)]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: TextWidget(text: "Notification", color: Color(0xff1D1617), width: 95, fontSize: 16, top: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: SizedBox(
                        height: 20,
                        width: 280,
                        child: Row(
                          children: const [
                            Icon(Icons.notifications_none_sharp, color: Color(0xff92A3FD),size: 20,),
                            TextWidget(text: "Pop - up Notofication", color: Color(0xff7B6F72), width: 117, fontSize: 12, top: 0),
                            Padding(
                              padding: EdgeInsets.only(left: 80),
                              child: TogleButtom(),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],

                ),
              ),
            ),
          ],
        ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color(0xff92A3FD),
          child: const Icon(Icons.search_sharp),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: const Color(0xffADA4A5),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.trending_up),
              color: const Color(0xffADA4A5),
              onPressed: () {},
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: const Icon(Icons.photo_camera_outlined),
              color: const Color(0xffADA4A5),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.perm_identity_outlined),
              color: const Color(0xffADA4A5),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

