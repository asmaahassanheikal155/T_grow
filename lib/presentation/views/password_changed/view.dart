import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../login/view.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [

      Container(

      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(AppImages.Backgroundd),fit: BoxFit.fill
    ),
    ),),
         SingleChildScrollView(
           child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 200.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(AppImages.Sticker)],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Password Changed!",
                      style: GoogleFonts.montserrat(
                          color: AppColors.fontColor, fontSize: 24.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.h.w, left: 90.w.h, right: 60.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Your password has been",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 16.sp),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 100.w.h),
                child: Row(
                  children: [
                    Text(
                      "changed successfully.",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 80.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const LogIn()));
                      },
                      child: Container(
                        height: 45.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            color: AppColors.StartAndLogin,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding:
                               EdgeInsets.only(top: 10.w.h, bottom: 10.w.h, left: 5.w.h),
                          child: Center(
                            child: Text(
                              'Back to Log in',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
                   ),
         ),
      ],)
    );
  }
}
