import 'package:flutter/material.dart';

import '../../../ui_utils/widgets/drop_down.dart';
import '../../../ui_utils/widgets/image_widget.dart';

class CreateProfileView extends StatelessWidget {
  const CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: const <Widget>[
              ImageWidget(imageName: "assets/images/photo1.png"),
              DropdownItems(),
            ],
          ),
        ),
      ],

    );
  }
}
