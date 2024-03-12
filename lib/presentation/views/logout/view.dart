import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';

import '../../../app/app_colors.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
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
          "Log Out",
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
            SizedBox(
              height: 230.h,
            ),
             Center(
              child: Text("Are you sure you want to log out? ",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBottom(name: "Log Out", width: 143.w, height: 37.h),
                SizedBox(
                  width: 20.w,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustomBottom(
                        name: "Cancel", width: 143.w, height: 37.h)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
