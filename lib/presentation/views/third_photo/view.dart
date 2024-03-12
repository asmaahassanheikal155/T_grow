import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../forth_photo/view.dart';

class ThirdPhoto extends StatefulWidget {
  const ThirdPhoto({super.key});

  @override
  State<ThirdPhoto> createState() => _ThirdPhotoState();
}

class _ThirdPhotoState extends State<ThirdPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          height: 470,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.ThirdPhoto,
                ),
                fit: BoxFit.fill),
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
          height: 280,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppColors.StartAndLogin),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  children: [
                    Text(
                      "03.",
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
                      "Disease Definition",
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
                      "Identify plant diseases and learn all about their prevention .",
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
                                  builder: (builder) => const ForthPhoto()));
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
