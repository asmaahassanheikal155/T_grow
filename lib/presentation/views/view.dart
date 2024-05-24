/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/views/auth/register/states.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';
import '../../../core/logic/helper_methods.dart';
import '../../sheets/cities.dart';
import '../login/view.dart';
import 'cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late RegisterCubit cubit;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     cubit = BlocProvider.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/background.png",
                fit: BoxFit.fill,
                height: double.infinity,
              ),
              Form(
                key: cubit.formKey,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 130.w,
                      height: 126.h,
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Text(
                      "مرحبا بك مرة أخرى",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "يمكنك تسجيل حساب جديد الأن",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15.sp,
                          color: const Color(0xff707070)),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    AppInput(
                      controller: cubit.fullNameController,
                      image: "assets/images/person.png",
                      labelText: 'اسم المستخدم',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("اسم المستخدم غير موجود");
                        } else if (value.length < 3) {
                          return "حقل اسم المستخدم على الأقل 3 حروف ";
                        }
                        return null;
                      },
                    ),
                    AppInput(
                      controller: cubit.phoneController,
                      image: "assets/images/phone.png",
                      isPhone: true,
                      labelText: "رقم الجوال",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("رقم الجوال غير موجود");
                        } else if (value.length < 10) {
                          return "حقل رقم الجوال على الأقل 10 حروف ";
                        }
                        return null;
                      },
                    ),
                    StatefulBuilder(
                      builder: (context, setState) => GestureDetector(
                        onTap: () async {
                          final result = await showModalBottomSheet(
                              context: context,
                              builder: (context) => const CitiesSheet());
                          setState(() {});
                          if (result != null) {
                            cubit.selectedCity = result;
                            setState(() {});
                          }
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: AbsorbPointer(
                                absorbing: true,
                                child: AppInput(
                                  image: "assets/images/flag.png",
                                  labelText:
                                  cubit.selectedCity?.name ?? "المدينة",
                                  validator: (value) {
                                    if (cubit.selectedCity == null) {
                                      return "برجاء ادخال المدينة";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppInput(
                      controller: cubit.passwordController,
                      isPassword: true,
                      image: "assets/images/lock.png",
                      labelText: "كلمة المرور",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("كلمة المرور غير موجود");
                        } else if (value.length < 8) {
                          return "حقل كلمة المرور على الأقل 8 حروف ";
                        }
                        return null;
                      },
                    ),
                    AppInput(
                      controller: cubit.confirmationPasswordController,
                      isPassword: true,
                      image: "assets/images/lock.png",
                      labelText: "تأكيد كلمة المرور",
                      bottom: 24,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("كلمة المرور غير موجود");
                        } else if (value.length < 8) {
                          return "حقل كلمة المرور على الأقل 8 حروف ";
                        } else if (value != cubit.passwordController.text) {
                          return "كلمتان المرور غير متطابقة ";
                        }
                        return null;
                      },
                    ),
                    BlocBuilder(
                        bloc: cubit,
                        builder: (context, state) {
                          if (state is RegisterLoadingState) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }

                          else {
                            return AppButton(
                                title: "تسجيل",
                                onPress: () {
                                  cubit.register();
                                });
                          }
                        }),
                    SizedBox(
                      height: 45.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "لديك حساب بالفعل ؟",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                            onPressed: () {
                              // navigateTo(const LoginView(),);
                              Navigator.pop(context);
                            },
                            child: Text(
                              "تسجيل الدخول",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}*/
