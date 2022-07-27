import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/authenticationcubit/states/loginstates.dart';
import 'package:myapp/remote_network/Dio_Helper.dart';

class SignUpCubit extends Cubit<LoginStates> {
  SignUpCubit() : super(InitStates());
  static SignUpCubit get(context) => BlocProvider.of(context);

  void signUp({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String repassword,
    //required String phonenumber,
    required String country,
  }) {
    emit(RegisterLoadingStates());
    DioHelper.postdata(url: 'signup', data: {
      'firstName': firstname,
      'lastName': lastname,
      'email': email,
      //'phoneNumber': phonenumber,
      'password': password,
      'country': country,
    }).then((value) => {emit(RegisterSuccessStates())}).catchError((Error) {
      emit(RegisterSuccessStates());
    });
  }
}
