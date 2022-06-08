part of 'create_profile_bloc.dart';

@immutable
abstract class CreateProfileEvent {}

class ClickedWeightButtonEvent extends CreateProfileEvent {}
class ClickedHeightButtonEvent extends CreateProfileEvent {}