import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import '../../../app/app_images.dart';
import '../login/view.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: Image.asset(AppImages.TGrowLogo),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "User Name",
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
                  SizedBox(height: 30.h),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
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
                  SizedBox(
                    height: 30.h,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: " Password",
                      suffixIcon: const Icon(
                        Icons.visibility_off_sharp,
                      ),
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
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "confirm Password",
                      fillColor: Colors.white,
                      suffixIcon: const Icon(
                        Icons.visibility_off_sharp,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const LogIn()));
                      },
                      child: CustomBottom(
                        name: "Sing Up",
                        height: 49.h,
                        width: 344.w,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(children: <Widget>[
                      const Expanded(
                          child: Divider(
                        color: Colors.white,
                      )),
                      Text(
                        "OR SingUp with",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 12),
                      ),
                      const Expanded(
                          child: Divider(
                        color: Colors.white,
                      )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.facebookLogo,
                          width: 100.w,
                          height: 50.h,
                        ),
                        Image.asset(
                          AppImages.googleLogo,
                          width: 100.w,
                          height: 50.h,
                        ),
                        Image.asset(
                          AppImages.iphonelogo,
                          width: 100.w,
                          height: 50.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
