import 'dart:async';

import 'package:get/get.dart';
 import 'package:poolnest/views/dashboard.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
     
    super.onInit();
    Timer(const Duration(seconds: 4), () { 
      Get.to(()=>const CustomerDashboard());
    });
  }
}