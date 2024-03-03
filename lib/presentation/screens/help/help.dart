import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/screens/chat_bot/chat_bot.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.aColor.withOpacity(.8),
          toolbarHeight: 100.h,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title:  Text(
            "Help",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.greenColor),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: AppColors.aColor.withOpacity(.8)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: Container(
                    width: 190.w,
                    height: 190.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(150)),
                    child: Image.asset(AppImages.pic21),
                  ),
                ),
                 Text("Help Center",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor)),
                 Text("If you want any help or",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor)),
                 Text("faces any problems",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor)),
                 Text("with our app,",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greenColor)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(" please go to",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greenColor)),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const ChatBot()));
                      },
                      child:  Text(" Chat bot",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const ChatBot()));
                    },
                    child: CustomBottom(
                        name: ("To Chat bot"), width: 203.w, height: 37.h))
              ],
            ),
          ),
        ));
  }
}
