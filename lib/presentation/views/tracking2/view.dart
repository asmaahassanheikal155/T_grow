import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../tracking1/view.dart';

class Tracking2 extends StatefulWidget {
   Tracking2({super.key,this.controller});
  PageController? controller;

  @override
  State<Tracking2> createState() => _Tracking2State();
}

class _Tracking2State extends State<Tracking2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, bottom: 20),
        child: Column(children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>  const HomeScreen()));
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.green[900],
                  )),
              Text(
                'My plants',
                style: GoogleFonts.montserrat(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 92.w,
                    height: 92.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Co2',
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '614',
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),
                Container(
                  width: 92.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(children: [
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
                      '60%',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.green[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 92.w,
                    height: 92.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              children: [
                Text(
                  'My plants ',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 330.w,
                    height: 75.h,
                    decoration: BoxDecoration(
                        color: AppColors.pinkcontainer,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(AppImages.plant1),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tomato plant',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.green[900]),
                              ),
                            ),
                            Text(
                              'This plant needs water (110 ml)',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h,),
          Expanded(
            child: SizedBox(height: MediaQuery.of(context).size.height-200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,item){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 110),
                  child: Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(border: Border.all(color:Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),

                  ),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 2,left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle),
                          ],
                        ),
                      ),
                      Image.asset(AppImages.plant1,width: 110.w,height: 149.h,),
                      Padding(
                        padding:  const EdgeInsets.only(top: 3),
                        child: Text('Plant 2',style: GoogleFonts.montserrat(
                            fontSize: 12,fontWeight: FontWeight.w700,color: Colors.green[900]
                        ),),
                      )
                    ],),
                  ),
                );
              },
                  separatorBuilder: (context,item){
                return SizedBox(width: 10.w,);
                  },
                  itemCount: 10),
            ),
          ),



        ]),
      ),
    );
  }
}
