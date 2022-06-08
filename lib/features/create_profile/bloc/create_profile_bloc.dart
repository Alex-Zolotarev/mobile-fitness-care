import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_profile_event.dart';
part 'create_profile_state.dart';

class CreateProfileBloc extends Bloc<CreateProfileEvent, CreateProfileState> {
  String _typeOfWeight = "Kg";
  String _typeOfHeight = "Cm";

  CreateProfileBloc() : super(PageState("Kg", "Cm")) {

    on<ClickedWeightButtonEvent>((event, emit) {
      _onClickedWeightButton(event, emit);
    });

    on<ClickedHeightButtonEvent>((event, emit) {
      _onClickedHeightButton(event, emit);
    });
  }

  void _onClickedWeightButton(event, emit) {
    if (_typeOfWeight == "Kg")
    {
      _typeOfWeight = "Oz";
    }
    else
    {
      _typeOfWeight = "Kg";
    }
    emit(PageState(_typeOfWeight, _typeOfHeight));
  }

  void _onClickedHeightButton(event, emit) {
    if (_typeOfHeight == "Cm")
    {
      _typeOfHeight = "In";
    }
    else
    {
      _typeOfHeight = "Cm";
    }
    emit(PageState(_typeOfWeight, _typeOfHeight));
  }

}