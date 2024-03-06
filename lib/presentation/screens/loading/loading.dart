import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_grow/app/app_images.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.close),
        ],
      ),
      body:Center(child:Image.asset(AppImages.pic19))
    );
  }
}
