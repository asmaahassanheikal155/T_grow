class UserState{}
class UserInitial extends UserState{}
class LoginSuccess extends UserState{}
class LogninLoading extends UserState{}
class LoginError extends UserState{
  final String errorMessage;

  LoginError(this.errorMessage);
}