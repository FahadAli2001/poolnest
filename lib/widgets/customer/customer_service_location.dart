import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/padding.dart';

class CustomerServiceLocationWidget extends StatelessWidget {
  const CustomerServiceLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height,
        ),
        Positioned(
          top: Get.height*0.03,
          child: Container(
            width: Get.width*0.98,
            height: Get.height  ,
           decoration: BoxDecoration(
             color: Colors.grey.shade300,
             borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),
             topRight: Radius.circular(20))
           ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          child: Container
          (
            width: Get.width*0.8,
            height: Get.height*0.08,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.circular(15)
            ),
            padding:const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Service Location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),
                 Text('-',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),),
              ],
            ),
          ),
        )
      ],
    );
  }
}