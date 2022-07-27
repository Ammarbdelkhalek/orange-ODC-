abstract class LoginStates {}

class InitStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

class LoginSuccessStates extends LoginStates {}

class LoginErrorStates extends LoginStates {
  final String error;
  LoginErrorStates(this.error);
}
// register state

class RegisterLoadingStates extends LoginStates {}

class RegisterSuccessStates extends LoginStates {}

class RegisterErrorStates extends LoginStates {
  final String error;
  RegisterErrorStates(this.error);
}
