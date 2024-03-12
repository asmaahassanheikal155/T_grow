import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/presentation/components/custom_bottom.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../forget_password/view.dart';
import '../sign_up/view.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [

        Container(
        
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.Backgroundd),fit: BoxFit.fill
            ),
            ),),
            Padding(
              padding: EdgeInsets.only(top: 100, right: 30.h,left: 30,bottom: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.TGrowLogo),
                    SizedBox(height: 50.h,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Email address",
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
                        hintText: "Password",
                        fillColor: Colors.white,
                        suffixIcon: const Icon(
                          Icons.visibility_off_sharp,
                        ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          const ForgetPassword()));
                            },
                            child: const Text('Forget your password?',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 14)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: CustomBottom(
                            name: "Login", width: 344.w, height: 49)),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(children: <Widget>[
                        const Expanded(
                            child: Divider(
                          color: Colors.white,
                        )),
                        Text(
                          "OR Login with",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account?",
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => const SignUp()));
                            },
                            child: Text(
                              'SignUp',
                              style: GoogleFonts.montserrat(
                                  color: AppColors.fontColor, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )],
        )
    );
  }
}
