
import 'package:alisons/Bloc/Login_bloc/login_event.dart';
import 'package:alisons/Bloc/Login_bloc/login_state.dart';
import 'package:alisons/services/LoginApi/LoginApi.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginApi loginApi = LoginApi();

  LoginBloc() : super(LoginInitial()) {
    on<OnLoginEvent>((event, emit) async {
      emit(LoginLoading());
      try {
        final model = await loginApi.postuserdata(event.email, event.password);
        if (model.success ==1) {
          emit(LoginSuccess(model));
        } else {
          emit(LoginError(model.message ?? "Login Failed"));
        }
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    });
  }
}