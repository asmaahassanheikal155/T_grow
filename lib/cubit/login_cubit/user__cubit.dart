import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_grow/cubit/login_cubit/state_cubit.dart';
import 'package:t_grow/presentation/views/login/view.dart';

class UserCubit extends Cubit<UserState>{
  UserCubit():super(UserInitial());
final formKeyy = GlobalKey<FormState>();
final emailController =TextEditingController();
final passwordController =TextEditingController();
  static UserCubit  get(context) {
    return BlocProvider.of(context);}
login(
  {required String email,required String password}
    )async {
  if (formKeyy.currentState!.validate()) {
    try {
    emit(LogninLoading());
    final response = await
    Dio().post("https://graduation-project-api.runasp.net/Users/Login",
      data: { "Email": emailController.text,
        "Password": passwordController.text},);
    emit(LoginSuccess());
    print(response.data);
  } on DioException catch (e) {
    emit(LoginError(e.toString()));
    print(e.toString());
  }
  }
}
}