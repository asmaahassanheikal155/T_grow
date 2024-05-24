
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void navigateTo(Widget page) {
  Navigator.push(
      navigatorKey.currentContext! ,
      MaterialPageRoute(builder: (context) => page));
}
