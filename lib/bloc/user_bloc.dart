import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository_provider/bloc/user_event.dart';
import 'package:repository_provider/bloc/user_state.dart';
import 'package:repository_provider/data/repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;
  UserBloc(this._userRepository) : super(UserInitialState()) {
    on<LoadUserEvent>(
      (event, emit) async {
        emit(UserLoadingState());
        try {
          final user = await _userRepository.getUsers();
          emit(UserSuccessState(user));
        } catch (e) {
          emit(UserErrorState(e.toString()));
        }
      },
    );
  }
}
