import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_grow/data/cubits/profile/profile_state.dart';
import 'package:t_grow/presentation/views/profile/view.dart';

import '../lang/lang_cubit.dart';



class SettingPatientBloc extends Cubit<ProfileState> {
  SettingPatientBloc() : super(ProfileInitial());

  String arabicValue = 'ar';
  String englishValue = 'en';
  String? currentLang;
  initLangSetings() {
    currentLang = CacheHelper().getCachedLanguage();
    emit( changeLangLoaded());

    print('loaded');
    print(currentLang);
  }

  changeLang(String lang) async {
    try {
      emit(changeLangLoading());
      // await sl<CacheHelper>().cacheLanguage(lang);
      await LangCubit().changeLang(lang);
      currentLang = lang;
      emit(changeLangLoaded());
    } catch (e) {
      emit(changeLangError());
    }
  }

  bool switchValue = true;
  changeSwitch(bool value) {
    emit(changeSwitchLoading());
    switchValue = value;
    emit(changeSwitchLoaded());
  }

  //? Change pass Vars
  // keys
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  // Login Feild Coctrollers
  final TextEditingController currentPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  // value of obscuring passowrd feild
  bool isCurrentPasswordShowing = true;
  bool isNewPasswordShowing = true;
  //icon of password feild
  IconData suffixIconCurrent = Icons.lock_rounded;
  IconData suffixIconNew = Icons.lock_rounded;

  void changeLoginPasswordSuffixIcon(bool currentPassword) {
    if (currentPassword) {
      emit(ProfileInitial());

      isCurrentPasswordShowing = !isCurrentPasswordShowing;
      suffixIconCurrent = isCurrentPasswordShowing
          ? Icons.lock_rounded
          : Icons.lock_open_rounded;
      emit(changeCurrentPasswordVisabilty());
    } else {
      emit(ProfileInitial());
      isNewPasswordShowing = !isNewPasswordShowing;
      suffixIconNew =
      isNewPasswordShowing ? Icons.lock_rounded : Icons.lock_open_rounded;
      emit(changeNewPasswordVisabilty());
    }
    }
}

