import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/presentation/screens/about/about.dart';
import 'package:t_grow/presentation/screens/help/help.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';
import 'package:t_grow/presentation/screens/logout/logout.dart';
import 'package:t_grow/presentation/screens/notification/notification_screen.dart';

import '../../../app/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "profile",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 358.w,
                height: 75.h,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        stops: [.3, 3],
                        colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                    color: AppColors.GColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        AppImages.pic19,
                      ),
                      radius: 37,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  "Rachel",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.greenColor),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  "Last sync 5/5/22",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          AppColors.greenColor.withOpacity(.4)),
                                ),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Preferences",
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greenColor),
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: const BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15))),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child:
                                            const Icon(Icons.arrow_back_ios)),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "Language",
                                      style: TextStyle(
                                          color: AppColors.greenColor,
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Align(alignment: AlignmentDirectional.centerStart,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50,right: 50),
                                  child: Text(
                                    "select your language",
                                    style: TextStyle(
                                        color: AppColors.greenColor.withOpacity(.61),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Container(
                                width: 266.w,
                                height: 226.h,
                                decoration: BoxDecoration(
                                    color: AppColors.lColor,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.language,
                          color: AppColors.greenColor,
                          size: 26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greenColor,
                          ),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationScreen()));
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: AppColors.greenColor,
                          size: 26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Notification",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greenColor,
                          ),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Help()));
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.help,
                          color: AppColors.greenColor,
                          size: 26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Help",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greenColor,
                          ),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const About()));
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          AppImages.about,
                          color: AppColors.greenColor,
                          width: 26.w,
                          height: 26.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.greenColor),
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.greenColor,
                          ),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LogOut()));
                },
                child: Container(
                  width: 358.w,
                  height: 75.h,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [.3, 3],
                          colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
                      color: AppColors.GColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout,
                        color: AppColors.greenColor,
                        size: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Log out",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenColor),
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.greenColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
