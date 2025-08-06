import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/helper_method.dart';
import 'package:t_grow/presentation/views/loading/view.dart';
import '../../../app/app_images.dart';
import '../../../data/cubits/register/register_cubit.dart';
import '../../../data/cubits/register/register_state.dart';
import '../cubit.dart';
import '../login/view.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late RegisterCubit cubit;

  @override
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });}
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of(context);}
  bool isLoading = false;
  void register() async {
    isLoading = true;
    setState(() {});}
  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.Backgroundd), fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
              child: SingleChildScrollView(
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: Image.asset(AppImages.TGrowLogo),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("username not exist");
                          } else if (value.length < 3) {
                            return "username 3 letter ata least ";
                          }
                          return null;
                        },
                        controller: cubit.userNameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "User Name",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Email not exist");
                          } else if (value.length < 3) {
                            return "Email 3 letter ata least ";
                          }
                          return null;
                        },
                        controller: cubit.emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "Email",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("password not exist ");
                          } else if (value.length < 8) {
                            return " password 8 letters ata least";
                          }
                          return null;
                        },
                        controller: cubit.passwordController,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: " Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggle,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("password not exist");
                          } else if (value.length < 8) {
                            return " password 8 letters at least";
                          } else if (value != cubit.passwordController.text) {
                            return " Two passwords do not match";
                          }
                          return null;
                        },
                        controller: cubit.confirmationPasswordController,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "confirm Password",
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggle,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      BlocBuilder(
                        bloc: cubit,
                        builder: (context, state) {
                        if(state is RegisterSuccessState){
                          return CircularProgressIndicator();
                        }
                        else {
                          return  InkWell(
                              onTap: () {
    if (cubit.formKey.currentState!.validate()) {
    cubit.register();
    }
    },
                              child: CustomBottom(
                                name: "Sing Up",
                                height: 49.h,
                                width: 344.w,
                              ));
                        }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(children: <Widget>[
                          const Expanded(
                              child: Divider(
                                color: Colors.white,
                              )),
                          Text(
                            "OR SingUp with",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 12),
                          ),
                          const Expanded(
                              child: Divider(
                                color: Colors.white,
                              )),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.facebookLogo,
                              width: 100.w,
                              height: 50.h,
                            ),
                            Image.asset(
                              AppImages.googleLogo,
                              width: 100.w,
                              height: 50.h,
                            ),
                            Image.asset(
                              AppImages.iphonelogo,
                              width: 100.w,
                              height: 50.h,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
