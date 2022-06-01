import 'package:flutter/material.dart';
import 'package:task_1/ui_utils/widgets/gradient_button.dart';
import 'package:task_1/ui_utils/widgets/image_widget.dart';
import 'package:task_1/ui_utils/widgets/text_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          children:  [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
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
              child: GradientButton(width: 83, height: 30, text: "Edit", fontSize: 12, radius: 99, color_left: Color(0xff9DCEFF), color_right: Color(0xff92A3FD), left: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 44, right: 24),
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
                    child: Container(
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
          ],
        ),
    );
  }
}

