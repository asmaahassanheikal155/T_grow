
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../tracking1/view.dart';

class Treatment extends StatefulWidget {
   const Treatment({super.key,
     required this.imageUrl,
     required this.treatmentContent,});
   final String? imageUrl;
   final String? treatmentContent;

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            height: 470.h,
            
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image:FileImage(
                      File(widget.imageUrl!),
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(top: 50, left: 300),
        child:
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
      ),
        ]),
    Padding(
    padding: const EdgeInsets.only(top:50),
    child:Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(widget.treatmentContent.toString())
            ],),
    ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [ InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tracking1()));
                  },
                  child: CustomBottom(
                      name: "Start Tracking", width: 203.w, height: 37.h),
                ),]),
            )

          ],
        ),

    );
  }
}
