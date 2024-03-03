import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:t_grow/presentation/screens/alert.dart';
import 'package:t_grow/presentation/screens/chat_bot/chat_bot.dart';
import 'package:t_grow/presentation/screens/home1/home1.dart';
import 'package:t_grow/presentation/screens/home2/home2.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';
import 'package:t_grow/presentation/screens/plant/plant.dart';
import 'package:t_grow/presentation/screens/scan1/scan1.dart';
import 'package:t_grow/presentation/screens/scan2/scan2.dart';
import 'package:t_grow/presentation/screens/treatment/treatment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/local/app_local.dart';

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
        home: const HomeScreen(),
      ),
    );
  }
}
