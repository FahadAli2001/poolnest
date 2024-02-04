import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
 import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:poolnest/controller/splash_screen_controller.dart';
import 'package:poolnest/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'poolNest',
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey),  
            ),
          ),
          useMaterial3: true),
      home: const SplashScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(SplashScreenController());
      }),
    );
  }
}
