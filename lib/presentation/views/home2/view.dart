import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
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
                  decoration: BoxDecoration(
                      color: AppColors.begColor.withOpacity(.3),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(120),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
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
                            style: TextStyle(
                                color: AppColors.darkColor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400)),
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
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Recently added",
                      style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                child: Padding(
                  padding:  const EdgeInsets.only(left: 15),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, item) {
                        return SizedBox(
                          width: 244.w,
                          height: 105.h,
                          // padding: EdgeInsets.only(top: ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.pic7,
                                width: 80.w,
                                height: 80.h,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 105.h,
                                  child:  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Late blight",
                                        style: TextStyle(
                                            color: AppColors.clearGreenColor,
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        "Is one of the most serious fungal diseases that can affect tomatoes and potatoes. Late blight is spread from infected transplants, volunteer potato or tomato plants, and certain weeds botanically related to tomatoes. Spores of this fungus can be airborne and travel great distances in storms.",
                                        style: TextStyle(fontSize: 11.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, item) {
                        return SizedBox(
                          width: 10.w,
                        );
                      },
                      itemCount: 10),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                SizedBox(height: 150.h),
                Image.asset(
                  AppImages.pic2,
                  width: 50.w,
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  AppImages.pic3,
                  width: 50.w,
                  height: 60.h,
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  AppImages.pic4,
                  width: 50.w,
                  height: 60.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
