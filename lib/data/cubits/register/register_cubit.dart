import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_grow/data/cubits/register/register_state.dart';
import 'package:t_grow/presentation/views/login/view.dart';
import 'package:t_grow/presentation/views/new_password/view.dart';
import '../../../presentation/views/dio_helper.dart';
import '../../../presentation/views/helper_method.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() :super(RegisterStates());
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmationPasswordController = TextEditingController();


  final formKey = GlobalKey<FormState>();



  void register() async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState());
      final response =
      await DioHelper().sendData("Users/Register", data: {
        "UserName": userNameController.text,
        "Password": passwordController.text,
        "Email": emailController.text,
        "ConfirmPassword":confirmationPasswordController.text


      });
      if (response!.isSuccess) {
        navigateTo(const LogIn());

        emit(RegisterSuccessState());
      }
      else {
        emit(RegisterFailedState());
      }
    }
  }
}
