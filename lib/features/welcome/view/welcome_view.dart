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
              ImageWidget(imageName: "assets/images/photo1.png"),
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
          child: const Center(child: GradientButton()),
        ),
      ],
    );
  }
}
