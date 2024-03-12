import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../home_screen/view.dart';

class ForthPhoto extends StatefulWidget {
  const ForthPhoto({super.key});

  @override
  State<ForthPhoto> createState() => _ForthPhotoState();
}

class _ForthPhotoState extends State<ForthPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          height: 470.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.ForthPhoto), fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 300),
          child: Text(
            "Skip",
            style: GoogleFonts.montserrat(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ]),
      Expanded(
        child: Container(
          height: 280.h,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppColors.StartAndLogin),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  children: [
                    Text(
                      "04.",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 32),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Chatting with experts",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 24),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 50),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Finding solutions for plants diseases and learn how to care of plants .",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const HomeScreen()));
                        },
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                          size: 50,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
