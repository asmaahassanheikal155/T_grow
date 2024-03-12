import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../clear_notification/view.dart';

class NotificationScreen extends StatefulWidget {
   NotificationScreen({super.key, required this.controller});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
  PageController? controller;
}

class _NotificationScreenState extends State<NotificationScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(
          onPressed: () {
            widget.controller!.animateToPage(0,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeIn);



          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title:  Text(
          "Notification",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                widget.controller!.animateToPage(2,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn);

              },
              child:  Text("Clear",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.clearGreenColor)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, item) {
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 10, right: 5, bottom: 5, left: 10),
                      width: 358.w,
                      height: 95.h,
                      decoration: BoxDecoration(
                        color: AppColors.fColor.withOpacity(.48),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.aColor.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppImages.pic20,
                            fit: BoxFit.fill,
                          ),
                           Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Text(
                                        "Provide Lots of Light",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.clearGreenColor),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Text(
                                        "Water tomato plants deeply and regularly while the fruits are developing.",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.greenColor),
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, item) {
                    return  Divider(
                      thickness: 1,
                      height: 10.h,
                      color: Colors.grey,
                    );
                  },
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
