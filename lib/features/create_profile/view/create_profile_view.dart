import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/features/create_profile/bloc/create_profile_bloc.dart';
import 'package:task_1/ui_utils/widgets/textbox_widget.dart';

import '../../../ui_utils/widgets/drop_down.dart';
import '../../../ui_utils/widgets/gradient_button.dart';
import '../../../ui_utils/widgets/image_widget.dart';
import '../../../ui_utils/widgets/text_widget.dart';

class CreateProfileView extends StatelessWidget {
  const CreateProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateProfileBloc _bloc = BlocProvider.of<CreateProfileBloc>(context);

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
                child: DropdownItems(
                  height: 58,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                child: TextBoxWidget(
                  text: "Date of Birth",
                  icon: Icon(Icons.calendar_today),
                  height: 48,
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
                        text: "Your Weight",
                        icon: Icon(Icons.monitor_weight),
                        height: 48,
                      ),
                    ),
                    BlocBuilder<CreateProfileBloc, CreateProfileState>(
                      builder: (context, state) {
                        return GradientButton(
                          text: state is PageState ? state.typeOfWeight : "",
                          fontSize: 12,
                          width: 48,
                          height: 48,
                          left: 10,
                          radius: 14,
                          colorLeft: const Color(0xffEEA4CE),
                          colorRight: const Color(0xffC58BF2),
                          onTap: () {
                            _bloc.add(ClickedWeightButtonEvent());
                          },
                        );
                      },
                    ),
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
                        icon: Icon(Icons.arrow_downward),
                        height: 48,
                      ),
                    ),
                     BlocBuilder<CreateProfileBloc, CreateProfileState>(
                       builder: (context, state) {
                         return  GradientButton(
                          text: state is PageState ? state.typeOfHeight : "",
                          fontSize: 12,
                          width: 48,
                          height: 48,
                          left: 10,
                          radius: 14,
                          colorLeft: const Color(0xffEEA4CE),
                          colorRight: const Color(0xffC58BF2),
                           onTap: () {
                             _bloc.add(ClickedHeightButtonEvent());
                           },
                          );
                       }
                     ),
                  ],
                ),
              ),
              const TextWidget(
                color: Color(0xFF1D1617),
                width: 272,
                text: "Let's complete your profile",
                fontSize: 20,
                top: 39,
              ),
              const TextWidget(
                color: Color(0xFF7B6F72),
                width: 229,
                text: "It will help us to know more about you!",
                fontSize: 12,
                top: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: GradientButton(
                    width: 315,
                    height: 60,
                    text: "Next",
                    fontSize: 16,
                    radius: 99,
                    left: 127,
                    colorLeft: Color(0xff9DCEFF),
                    colorRight: Color(0xff92A3FD)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
