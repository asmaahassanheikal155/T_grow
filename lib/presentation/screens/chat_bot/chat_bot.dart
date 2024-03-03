import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_images.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';

import '../../../app/app_colors.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();

        },icon: const Icon(Icons.arrow_back_ios),),
        title:  Text(
          "Chat bot",
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.greenColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

             SizedBox(height: 150.h),
             Text(
              "Hello i am your virtual guide",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600,color: AppColors.greenColor)),
               Text(
              "and will help you",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600,color: AppColors.greenColor)),
                 Text(
              "in planting",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600,color: AppColors.greenColor),

            ),
             SizedBox(height: 10.h,),
            Center(child: Image.asset(AppImages.pic18,width: 128.w,height: 128.h,)),
             SizedBox(height: 50.h,),
            CustomBottom(name: "start", width: 203.w, height: 37.h)



          ],
        ),
      ),
    );
  }
}
