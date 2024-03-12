import 'dart:async';

import 'package:flutter/material.dart';
import 'package:t_grow/presentation/views/start/view.dart';

import '../../../app/app_images.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});


  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void  initState (){
    super.initState();
    Timer(const Duration(seconds: 2), () =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=>const Start())));
  }
  Widget build(BuildContext context) {


    return Scaffold(
    body:Stack(alignment: Alignment.center,
      children: [
    Container(
    decoration: const BoxDecoration(
    image: DecorationImage(
        image: AssetImage(AppImages.Backgroundd), fit: BoxFit.cover)),),

    Image.asset(AppImages.TGrowLogo),
      ],
    )

    );


  }
}
