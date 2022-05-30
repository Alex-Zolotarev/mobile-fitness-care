import 'package:flutter/material.dart';
import 'package:task_1/ui_utils/widgets/textbox_widget.dart';

import '../../../ui_utils/widgets/drop_down.dart';
import '../../../ui_utils/widgets/gradient_button.dart';
import '../../../ui_utils/widgets/image_widget.dart';

class CreateProfileView extends StatelessWidget {
  const CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 54, right: 53),
                child: ImageWidget(
                  imageName: "assets/images/photo1.png",
                  width: 268,
                  height: 268,
                  top: 25,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28, left: 30, right: 30),
                child: DropdownItems(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: TextBoxWidget(
                    text: "Date of Birth", icon: Icon(Icons.calendar_today)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 150,
                      child: const TextBoxWidget(
                          text: "Your Weight",
                          icon: Icon(Icons.monitor_weight)),
                    ),
                    GradientButton( text: 'KG', width: 48, height: 48, radius: 14,color_left: Color(0xffEEA4CE), color_right: Color(0xffC58BF2),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 150,
                      child: const TextBoxWidget(
                          text: "You Height",
                          icon: Icon(Icons.arrow_downward)),
                    ),
                    const GradientButton( text: 'CM', width: 48, height: 48, radius: 14,color_left: Color(0xffEEA4CE), color_right: Color(0xffC58BF2),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
