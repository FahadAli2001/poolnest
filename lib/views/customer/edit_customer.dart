import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';

class EditCustomer extends StatelessWidget {
  const EditCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading:  InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.grey.shade900,)),
        title: Text("Edit Customer",
        style: TextStyle(
          color: Colors.grey.shade900,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Image.asset(doneBtn),
          SizedBox(
            width: Get.width*0.05,
          )
        ],
      ),
      body: Padding(
        padding:   EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}