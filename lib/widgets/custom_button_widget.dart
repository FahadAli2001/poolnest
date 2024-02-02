import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class CustomButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback ontap;
  final Color textColor;
  const CustomButtonWidget({super.key,required this.color,required this.text,required this.ontap,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
                        width: Get.width ,
                        height: Get.height*0.08,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
    
                        ),
                        child: Center(
                          child: Text(text,
                          style:  TextStyle(
                            color: textColor,
                            fontSize: 20
                          ),),
                        ),
                       ),
    );
  }
}