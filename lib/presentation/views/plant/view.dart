import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/app/app_icons.dart';
import 'package:t_grow/cubit/upload_image_cubit/upload_image_cubit.dart';
import 'package:t_grow/plant_model/plant_model.dart';
import 'package:t_grow/presentation/views/payment/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../history/view.dart';
import '../history1/view.dart';
import '../treatment/view.dart';

class Plant extends StatefulWidget {
  const Plant({
    super.key,
    required this.imageUrl,
    required this.treatmentTitle,
    required this.treatmentContent,
  });

  final String? imageUrl;
  final String? treatmentTitle;
  final String? treatmentContent;

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const Spacer(),
                Stack(alignment: Alignment.bottomLeft, children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const History()));
                    },
                    child: Container(
                      width: 282.w,
                      height: 382.h,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: FileImage(
                              File(widget.imageUrl!),
                            ),
                            fit: BoxFit.scaleDown,
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const History1()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.greenColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.leaf1,
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.treatmentTitle!,
                    style: TextStyle(
                        color: AppColors.clearGreenColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              'aaaaa',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Payment()));
              },
              child: Container(
                  width: 203.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.treat),
                      SizedBox(width: 5.w),
                      Text(
                        "Treatment",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors.whiteColor),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
