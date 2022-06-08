part of 'create_profile_bloc.dart';

@immutable
abstract class CreateProfileState {}

class PageState extends CreateProfileState {
  final String typeOfWeight;
  final String typeOfHeight;
  PageState(this.typeOfWeight, this.typeOfHeight);
}
