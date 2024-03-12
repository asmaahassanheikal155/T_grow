import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_images.dart';

import '../home_screen/view.dart';

class History1 extends StatefulWidget {
  const History1({super.key});

  @override
  State<History1> createState() => _History1State();
}

class _History1State extends State<History1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        },icon: const Icon(Icons.arrow_back_ios),),
        title:  Text(
          "History",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Align(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, item) {
                      return Row(
                        children: [
                          Image.asset(
                            AppImages.pic7,
                            width: 80.w,
                            height: 80.h,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Image",
                                      style: TextStyle(
                                          color: AppColors.clearGreenColor,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 5.h),
                                Text(
                                  "This plant suffers from late blight which infect many crops of tomato. It appears as  small dead spots, light to dark green, somewhat circular and water-soaked ....",
                                  style: TextStyle(fontSize: 10.sp),
                                ),

                              ],
                            ),
                          ),


                        ],
                      );
                    },
                    separatorBuilder: (context, item) {
                      return  SizedBox(
                        height: 16.h,
                      );
                    },
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}