/*import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/views/auth/register/states.dart';
import 'package:thimar/views/home/view.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../features/cities/cities.dart';


class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() :super(RegisterStates());
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmationPasswordController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String? selectedCityText;
  CityModel? selectedCity;

  void register() async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState());
      final response =
      await DioHelper().sendData("client_register", data: {
        "fullname": fullNameController.text,
        "password": passwordController.text,
        "password_confirmation": confirmationPasswordController.text,
        "phone": phoneController.text,
        "country_id": 1,
        "city_id": selectedCity?.id ,
      });
      if (response!.isSuccess) {
        navigateTo(OtpCodeView(isActiveAccount: true, phone: phoneController.text,));
        emit(RegisterSuccessState());
      }
      else {
        emit(RegisterFailedState());
      }
    }
  }
}*/
