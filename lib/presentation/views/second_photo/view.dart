import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/views/third_photo/view.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
class SecondPhoto extends StatefulWidget {
  const SecondPhoto({super.key});

  @override
  State<SecondPhoto> createState() => _SecondPhotoState();
}

class _SecondPhotoState extends State<SecondPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:  Column(
        children:[ Stack(
            children:[ Container(
              height: 470,

              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.SecondPhoto,),fit: BoxFit.fill
                ),
              ),

            ),
              Padding(
                padding:  const EdgeInsets.only(top: 50,left: 300),
                child: Text("Skip",style: GoogleFonts.montserrat(color: Colors.black,
                    fontSize: 16,fontWeight: FontWeight.bold),),
              )
            ]
        ),
          Expanded(
            child: Container(
              height: 280,width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.StartAndLogin
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 30),
                  child: Row(children: [
                    Text("02.",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 32),)
                  ],),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child:Row(children: [
                    Text("Plan for all plant care",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 24),)
                  ],),),
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 30,right: 50),
                  child: Row(children: [
                    Expanded(child: Text("No more withered plants due to forgotten watering .",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14),))
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: (){  Navigator.push(context, MaterialPageRoute(
                          builder: (builder)=>const ThirdPhoto()
                      ));
                      },
                          child: const Icon(Icons.arrow_circle_right_outlined,color: Colors.white,size: 50,))
                    ],),
                )
              ],),
            ),
          )
        ]
    ));
  }
}
