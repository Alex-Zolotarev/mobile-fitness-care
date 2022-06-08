import 'package:flutter/cupertino.dart';

import '../../../ui_utils/widgets/gradient_button.dart';
import '../../../ui_utils/widgets/image_widget.dart';
import '../../../ui_utils/widgets/text_widget.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: const <Widget>[
              ImageWidget(
                  imageName: "assets/images/photo1.png",
              width: 268,
              height: 268,
              top: 138,),
              TextWidget(
                color: Color(0xFF7C6DDB),
                width: 124,
                text: 'Welcome To',
                fontSize: 20,
                top: 30,
              ),
              TextWidget(
                color: Color(0xFF7C6DDB),
                width: 284,
                text: 'OUR FITNESS CARE',
                fontSize: 32,
                top: 10,
              ),
              //App(),
            ],
          ),
        ),
        Positioned(
          bottom: 52,
          width: MediaQuery.of(context).size.width,
          child:  const Center(
              child: GradientButton(
                width: 315,
                height: 60,
                text: 'Get Started',
                fontSize: 16,
                radius: 99,
                colorLeft: Color(0xff9DCEFF),
                colorRight: Color(0xff92A3FD),
                left: 98,
              )
          ),
        ),
      ],
    );
  }
}
