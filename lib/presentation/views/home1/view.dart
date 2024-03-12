import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topRight,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.pic1,
                      height: 240.h,
                      width: 386.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 249.w,
                    height: 217.h,
                    decoration:  BoxDecoration(
                        color: AppColors.begColor.withOpacity(.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(120),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )),
                    child: Column(
                      children: [
                         SizedBox(
                          height: 10.h,
                        ),
                        Image.asset(
                          AppImages.pic5,
                          width: 64.w,
                          height: 64.h,
                        ),
                         SizedBox(
                          height: 10.h,
                        ),
                         Text(
                          "AI algorithm",
                          style: TextStyle(
                              color: AppColors.darkColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                         SizedBox(
                          height: 10.h,
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                              "Our algorithm recognizes plant and find diseases .It is also possible to give tips on how to take care of plant sbased on the huge plant database",
                              style: TextStyle(color: AppColors.darkColor,fontSize: 10.sp,fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                  height: 50.h,
                ),
                 Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Recently added",
                        style: TextStyle(
                            color: AppColors.darkColor,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        AppImages.pic6,
                        width: 80.w,
                        height: 80.h,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Text(
                        "You haven’t added\n any plants yet .",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                 SizedBox(height: 150.h),
                Image.asset(AppImages.pic2,width: 50.w,height: 60.h,),
                 SizedBox(height: 10.h),

                Image.asset(AppImages.pic3,width: 50.w,height: 60.h,),
                const SizedBox(height: 10),

                Image.asset(AppImages.pic4,width: 50.w,height: 60.h,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
