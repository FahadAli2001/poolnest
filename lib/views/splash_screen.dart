import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:poolnest/controller/splash_screen_controller.dart';
import 'package:poolnest/utils/images.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Image.asset(splashScreen,fit: BoxFit.fill,
      width: size.width,)
    );
  }
}
