import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../login/view.dart';
import '../new_password/view.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [ Container(

      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(AppImages.Backgroundd),fit: BoxFit.fill
    ),
    ),),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.TGrowLogo,
                      height: 55.h,
                      width: 150.w,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 32),
                child: Row(
                  children: [
                    Text(
                      "Forgot Password ?",
                      style: GoogleFonts.montserrat(
                          color: AppColors.fontColor, fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Don't worry! It occurs. Please enter the email address linked with your account.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.h,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Enter Your Email",
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

              Padding(
                padding:  EdgeInsets.only(top: 30.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const NewPassword()));
                      },
                      child: Container(
                        height: 45.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                            color: AppColors.StartAndLogin,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 115),
                              child: Text(
                                "Send Code",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Remember Password?",
                      style:
                          GoogleFonts.montserrat(color: Colors.white, fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => const LogIn()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                            color: AppColors.fontColor, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],)
    );
  }
}
