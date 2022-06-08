import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/features/create_profile/bloc/create_profile_bloc.dart';
import 'package:task_1/features/create_profile/view/create_profile_view.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateProfileBloc(),
      child: const CreateProfileView(),
    );
  }
}