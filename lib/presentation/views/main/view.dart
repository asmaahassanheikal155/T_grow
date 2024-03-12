import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../login/view.dart';
import '../sign_up/view.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.Backgroundd), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 250,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.TGrowLogo),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 160,
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    height: 283.h,
                    width: 390.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
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
                                height: 50.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                  color: AppColors.StartAndLogin,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => const SignUp()));
                                },
                                child: Container(
                                  height: 50.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.fontColor,
                                    borderRadius: BorderRadius.circular(14.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white, fontSize: 16.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
