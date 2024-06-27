import 'package:repository_provider/data/model/user_model.dart';

sealed class UserState {}

final class UserInitialState extends UserState {}

final class UserLoadingState extends UserState {}

final class UserSuccessState extends UserState {
  final UserModel userModel;
  UserSuccessState(this.userModel);
}

final class UserErrorState extends UserState {
  final String error;
  UserErrorState(this.error);
}
