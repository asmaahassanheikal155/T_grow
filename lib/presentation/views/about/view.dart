import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "About",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Container(
                width: 356.w,
                height: 593.h,
                decoration: BoxDecoration(
                  color: AppColors.aColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.aColor.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        AppImages.pic22,
                        width: 130.w,
                        height: 47.h,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: AppColors.bColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( maxLines: 2,
                              "Tgrow is the usable and great plant app that helps you to follow plant growth process.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                          color: AppColors.bColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( maxLines: 2,
                              "               You can scan the plant, identify disease, and know the treatment that you can do to your plant.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302.w,
                        height: 81.h,
                        decoration: BoxDecoration(
                          color: AppColors.bColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( maxLines: 2,
                              "          To help you with topics that will be vague for you. Tgrow added chat bot that you can use it freely.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302.w,
                        height: 81.h,
                        decoration: BoxDecoration(
                          color: AppColors.bColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "                Also we added contacts of the experts who can help you in your inquiry.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 302.w,
                        height: 81.h,
                        decoration: BoxDecoration(
                          color: AppColors.bColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(
                                  3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( maxLines: 2,
                              "              Weekly Tips which added automatically to follow how you can grow healthy and freshness plant ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
