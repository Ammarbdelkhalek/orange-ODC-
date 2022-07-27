import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/authenticationcubit/states/loginstates.dart';
import 'package:myapp/remote_network/Dio_Helper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitStates());
  static LoginCubit get(context) => BlocProvider.of(context);

  void userlogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingStates());
    DioHelper.postdata(url: 'LOGIN', data: {
      'email': email,
      'password': password,
    }).then((value) {
      emit(LoginSuccessStates());
    }).catchError((Error) {
      emit(LoginErrorStates(Error));
    });
  }
}
