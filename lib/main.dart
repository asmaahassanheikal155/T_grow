import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/presentation/views/first_photo/view.dart';
import 'package:t_grow/presentation/views/home_screen/view.dart';
import 'package:t_grow/presentation/views/payment/view.dart';
import 'core/local/app_local.dart';
import 'presentation/views/forth_photo/view.dart';
import 'presentation/views/first_screen/view.dart';
import 'presentation/views/forget_password/view.dart';
import 'presentation/views/login/view.dart';
import 'presentation/views/main/view.dart';
import 'presentation/views/new_password/view.dart';
import 'presentation/views/password_changed/view.dart';
import 'presentation/views/payment2/view.dart';
import 'presentation/views/start/view.dart';
import 'presentation/views/third_photo/view.dart';
import 'presentation/views/tracking1/view.dart';
import 'presentation/views/tracking2/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390,844),
      builder: (context,child)=>
       MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          AppLocalizations.delegate
        ],
        supportedLocales: const [
          Locale('ar', "EG"),
          Locale('en', "US"),
        ],
        locale: const Locale('en'),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FirstScreen(),
      ),
    );
  }
}
