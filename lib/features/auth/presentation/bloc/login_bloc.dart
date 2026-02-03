import 'package:aurea/features/auth/data/models/login_request.dart';
import 'package:aurea/features/auth/data/repositories/auth_repository.dart';
import 'package:aurea/features/auth/presentation/bloc/login_event.dart';
import 'package:aurea/features/auth/presentation/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository repository;

  LoginBloc(this.repository) : super(LoginInitial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit,) async {
    emit(LoginLoading());

    try {
      await repository.login(
        LoginRequest(
          email: event.email,
          password: event.password,
        ),
      );
      emit(LoginSuccess());
    } catch (_) {
      emit(LoginFailure('Login failed'));
    }
  }
}
