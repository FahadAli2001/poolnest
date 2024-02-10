import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';

class CustomWorkOrderListeningWidget extends StatelessWidget {
  const CustomWorkOrderListeningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            
                            children: [
                              Container(
                                padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text('REPAIR',
                                style: TextStyle(
                                
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                            const  SizedBox(
                                width: 5,
                              ),
                              const Text('UNPAID',
                                style: TextStyle(
                                fontSize: 18,
                                  color: yellowColor,
                                  fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                          //
                          const  SizedBox(
                                height: 10,
                              ),
                          //
                           const Text('Customer Name',
                                style: TextStyle(
                                
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),),
                                  const  SizedBox(
                                height: 10,
                              ),
                              //
                                const  SizedBox(
                                height: 10,
                              ),
                          //
                           const Text('Pool Name',
                                style: TextStyle(
                                
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),),
                                 //
                                const  SizedBox(
                                height: 10,
                              ),
                          //
                           const Text('Status : Pending',
                                style: TextStyle(
                                
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),),
                        ],
                      ),
                      //
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            height: Get.height * 0.13,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:const Padding(
                              padding:   EdgeInsets.all(15),
                              child:   Text('Work Details',
                                  style: TextStyle(
                                  fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                  ),),
                            ) ,
                          ),
                           //
                                const  SizedBox(
                                height: 10,
                              ),
                          //
                           const Text('Added by : Admin Name - Date -Time',
                                style: TextStyle(
                                fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
    )
        
        ;
  }
}