import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_icons.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/data/core/local/app_local.dart';

import '../chat_bot/view.dart';
import '../history1/view.dart';
import '../home1/view.dart';
import '../home2/view.dart';
import '../profile/view.dart';
import '../scan/view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    Home2(),
    History1(),
    ChatBot(),
    Scan(),
    Profile(),
  ];

  int currentIndex = 0;

  onTap(int index) {
    setState(() {
      // _page = index;
    });
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70.w,
        height: 70.h,

        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.greenColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.25),
                  blurStyle: BlurStyle.inner,
                  blurRadius: 8,
                  offset: const Offset(1, 1))
            ],
          ),
          child: FloatingActionButton(
            backgroundColor: AppColors.greenColor,
            onPressed: () {
              currentIndex = 3;
              setState(() {});
            },
            shape: const CircleBorder(),
            child: SvgPicture.asset(
              AppIcons.scan,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: BottomAppBar(
          notchMargin: 10,
          height: 90.h,
          elevation: 1.3,
          color: const Color(0xffF9F9F9).withOpacity(.88),
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AppIcons.icon1,
                          color: currentIndex == 0
                              ? AppColors.clearGreenColor
                              : AppColors.greenColor,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "1".tr(context),
                          style:  TextStyle(
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "poppins",
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AppIcons.history,
                          color: currentIndex == 1
                              ? AppColors.clearGreenColor
                              : AppColors.greenColor,
                        ),
                         SizedBox(
                          height: 4.h,
                        ),
                         Text(
                          "History",
                          style: TextStyle(
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "poppins",
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      currentIndex = 2;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          AppImages.chatboot,
                          width: 28.w,
                          height: 28.h,
                          color: currentIndex == 2
                              ? AppColors.clearGreenColor
                              : AppColors.greenColor,
                        ),
                         SizedBox(
                          height: 4.h,
                        ),
                         Text(
                          "Chat bot",
                          style: TextStyle(
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "poppins",
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      currentIndex = 4;
                      setState(() {});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AppIcons.icon4,
                          color: currentIndex == 4
                              ? AppColors.clearGreenColor
                              : AppColors.greenColor,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                         Text(
                          "Profile",
                          style: TextStyle(
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "poppins",
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(currentIndex),
      ),
    );
  }
}
