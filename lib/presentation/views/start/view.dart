import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../main/view.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  final style =  TextStyle(fontSize: 24.sp, color: AppColors.fontColor);

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
              padding: EdgeInsets.only(top: 50.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Take care of your plants',
                    style: GoogleFonts.montserrat(
                        color: AppColors.fontColor, fontSize: 24)),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => const Main()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      height: 37.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: AppColors.StartAndLogin,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('Start',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 16)),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
