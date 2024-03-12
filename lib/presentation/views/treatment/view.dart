import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../tracking1/view.dart';

class Treatment extends StatefulWidget {
   const Treatment({super.key,});


  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
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
          "Treatment",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, item) {
                    return Row(
                      children: [
                        Image.asset(
                          AppImages.pic17,
                          width: 78.w,
                          height: 75.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: Text(
                          "You should spray water which spider exists.",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        )),
                      ],
                    );
                  },
                  separatorBuilder: (context, item) {
                    return SizedBox(height: 30.h);
                  },
                  itemCount: 5),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
                },
                child: CustomBottom(
                    name: "Start Tracking", width: 203.w, height: 37.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
