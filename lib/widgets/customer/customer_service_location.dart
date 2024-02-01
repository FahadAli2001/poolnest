import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

class CustomerServiceLocationWidget extends StatelessWidget {
  const CustomerServiceLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height *2,
          ),
          Positioned(
            top: Get.height*0.03,
            child: Container(
              width: Get.width*0.98,
              height: Get.height *2 ,
             decoration: BoxDecoration(
               color: Colors.grey.shade300,
               borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),
               topRight: Radius.circular(20))
             ),
             child: Padding(
               padding: const EdgeInsets.only(top: verticalPadding + 30 , left: horizontalPadding,right: horizontalPadding,bottom: verticalPadding),
               child: Column(
                children: [
                   const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const  CustomTextFlieldWidget(hintText: "First Name",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const CustomTextFlieldWidget(hintText: "Last Name",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const CustomTextFlieldWidget(hintText: "Mobile",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const  CustomTextFlieldWidget(hintText: "Email",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Address Line 1",
                        borderSide: BorderSide.none,
                       )
                     ),
                       const SizedBox(
                       height: 20,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Location Code",
                        borderSide: BorderSide.none,
                       )
                     ),
                     SizedBox(
                      width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "City",
                        borderSide: BorderSide.none,
                       )
                     ),
                      ],
                     ),
                       const SizedBox(
                       height: 20,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "State",
                        borderSide: BorderSide.none,
                        sufficIcon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                       )
                     ),
                     SizedBox(
                      width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Zip Code",
                        borderSide: BorderSide.none,
                       )
                     ),
                      ],
                     ),
                        const SizedBox(
                       height: 20,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Gate Code",
                        borderSide: BorderSide.none,
                       )
                     ),
                     SizedBox(
                      width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Dog's Name",
                        borderSide: BorderSide.none,
                       )
                     ),
                      ],
                     ),
                        const SizedBox(
                       height: 20,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Rate",
                        borderSide: BorderSide.none,
                       )
                     ),
                     SizedBox(
                      width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Rate Type",
                        borderSide: BorderSide.none,
                        sufficIcon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                       )
                     ),
                      ],
                     ),
                      const SizedBox(
                       height: 20,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Labour Cost",
                        borderSide: BorderSide.none,
                       )
                     ),
                     SizedBox(
                      width: Get.width * 0.4,
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Cost Type",
                        borderSide: BorderSide.none,
                        sufficIcon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                       )
                     ),
                      ],
                     ),
                      const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const CustomTextFlieldWidget(hintText: "Minutes at stop",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child:const  CustomTextFlieldWidget(hintText: "Location Notes",borderSide: BorderSide.none,)
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       height: Get.height * 0.08,
                       child: const  CustomTextFlieldWidget(
                        hintText: "Sales Tax Group",
                        borderSide: BorderSide.none,
                        sufficIcon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                       )
                     ),
                ],
               ),
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
          ),
    
        ],
      ),
    );
  }
}