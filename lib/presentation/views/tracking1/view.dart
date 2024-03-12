import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../tracking2/view.dart';

class Tracking1 extends StatefulWidget {
   const Tracking1({super.key});


  @override
  State<Tracking1> createState() => _Tracking1State();
}

class _Tracking1State extends State<Tracking1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 20, bottom: 20),
        child: Column(children: [
          Row(
            children: [
              InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.green[900],
                ),
              ),
              Text(
                'Mosaic Verius',
                style: GoogleFonts.montserrat(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '26 Weeks',
                style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Image.asset(AppImages.leaf),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 88.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                                color: AppColors.firstbutton,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Temp',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '24°C ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 88.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                                color: AppColors.secondbutton,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Light',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '76% ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 88.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                                color: AppColors.thirdbutton,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Humidity',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '60% ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 88.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                                color: AppColors.forthbutton,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Fertilizer',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '87%',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Tracking2()));
                  },
                  child:const CustomBottom(height: 37,width: 203,name: "other plants",)
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
