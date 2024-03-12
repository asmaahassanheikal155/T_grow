import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final IconData icon;
  final String name;


  const CustomContainer(
      {super.key,
      required this.icon,
      required this.name,

      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      height: 75.h,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              stops: [.3, 3], colors: [Color(0xff8ACB88), Color(0xff2C533E)]),
          color: AppColors.GColor,
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.greenColor,
              size: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                name,
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
    );
  }
}
