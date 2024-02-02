import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';

class AddItemsScreen extends StatelessWidget {
  const AddItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey.shade900,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Edit Customer",
              style: TextStyle(
                  color: Colors.grey.shade900, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Pool Name",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Image.asset(nextBtn),
          SizedBox(
            width: Get.width * 0.05,
          )
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
                child: Column(
                  children: [
                  const  SizedBox(
                      height: 20,
                    ),
                      CustomButtonWidget(color: Colors.white, 
                      textColor: Colors.black,
                    text: 'Add Parts', ontap: (){}),
                    const  SizedBox(
                      height: 20,
                    ),
                     CustomButtonWidget(color: Colors.white, 
                     textColor: Colors.black,
                    text: 'Add Chemical', ontap: (){}),
                    const  SizedBox(
                      height: 20,
                    ),
                     CustomButtonWidget(color: Colors.white, 
                     textColor: Colors.black,
                    text: 'Add Other', ontap: (){})
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
