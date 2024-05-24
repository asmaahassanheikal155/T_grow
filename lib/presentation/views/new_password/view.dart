import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/password_changed/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';


class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [Container(

          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.Backgroundd),fit: BoxFit.fill
            ),
          ),),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.TGrowLogo,
                      height: 55.h,
                      width: 150.w,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 32),
                child: Row(
                  children: [
                    Text(
                      "Create new password",
                      style: GoogleFonts.montserrat(
                          color: AppColors.fontColor, fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Your new password must be unique from those previously used.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                  filled: true,
                  hintText: "Password",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w300),
                ),
              ),
            
              SizedBox(height: 30.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Confirm Password",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w300),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const PasswordChanged()));
                      },
                      child: CustomBottom(name: "Reset Password", width: 344.w, height: 49.h)
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),

        ],
      ) );
  }
}
