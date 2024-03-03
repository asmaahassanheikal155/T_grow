import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/scan/scan.dart';
import 'package:t_grow/presentation/screens/scan2/scan2.dart';
import 'package:t_grow/presentation/screens/scan_phone/scan_phone.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class Scan1 extends StatefulWidget {
  const Scan1({super.key});

  @override
  State<Scan1> createState() => _Scan1State();
}

class _Scan1State extends State<Scan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 120.h,
            child: Column(children: [
              SizedBox(
                height: 40.h,
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Added recently",
                      style: TextStyle(
                          color: AppColors.darkColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView.separated(
                      itemBuilder: (context, item) {
                        return Row(
                          children: [
                            Image.asset(
                              AppImages.pic15,
                              width: 171.w,
                              height: 171.h,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                             Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Late blight",
                                          style: TextStyle(
                                              color: AppColors.clearGreenColor,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Is one of the most serious fungal diseases that can affect tomatoes and potatoes. Late blight is spread from infected transplants, volunteer potato or tomato plants, and certain weeds botanically related to tomatoes. Spores of this fungus can be airborne and travel great distances in storms.",
                                      style: TextStyle(fontSize: 11.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, item) {
                        return SizedBox(
                          height: 16.h,
                        );
                      },
                      itemCount: 10),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300.h,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50))),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(Icons.close)),
                                    ),
                                  ],
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Add a plant to your history",
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: AppColors.greenColor),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Scan2(
                                          source: ImageSource.camera,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 350.w,
                                    height: 53.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: AppColors.greenColor,
                                            style: BorderStyle.solid)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppImages.pic10,
                                            width: 32.w,
                                            height: 32.h,
                                          ),
                                          SizedBox(
                                            width: 40.w,
                                          ),
                                           Text(
                                            "Identify by camera",
                                            style: TextStyle(
                                                color: AppColors.greenColor,
                                                fontSize: 22.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Scan2(
                                          source: ImageSource.gallery,
                                        ),
                                      ),
                                      (route) => true,
                                    );
                                  },
                                  child: Container(
                                    width: 350.w,
                                    height: 53.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: AppColors.greenColor,
                                            style: BorderStyle.solid)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppImages.pic11,
                                            width: 32.w,
                                            height: 32.h,
                                          ),
                                          SizedBox(
                                            width: 40.w,
                                          ),
                                          Text(
                                            "Identify by phone",
                                            style: TextStyle(
                                                color: AppColors.greenColor,
                                                fontSize: 22.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CustomBottom(
                    name: "Add more",
                    width: 203.w,
                    height: 37.h,
                  )),
            ])));
  }
}
