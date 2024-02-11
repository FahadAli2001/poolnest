import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';

import '../../utils/colors.dart';

class SettingScreen extends StatelessWidget {
    SettingScreen({super.key});

  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
        title: const Text(
          "Settings",
          style: TextStyle(
              fontSize: 20,
              color: primaryColor,
              fontWeight: FontWeight.bold),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Chemical Reading & Dosages Value',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
            //
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Service Checklist',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
            //
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Service Email Messages',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
            //
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Service Email Messages',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
             //
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Work Order Types',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
            //
             
            const  SizedBox(height: 20,),
            Container(
              width: Get.width,
              height: Get.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child:const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Text('Products',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),),
              ),
            ),
            //
            const  SizedBox(height: 20,),
          const   Align(
              alignment: Alignment.topLeft,
               child: Text('APP ZONE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
             ),
              //
            const  SizedBox(height: 10,),
          const   Align(
              alignment: Alignment.topLeft,
               child: Text('Options',
                  style: TextStyle(
                    fontSize: 18,
                  
                    color: Colors.black
                  ),),
             ),
             //
             const  SizedBox(height: 20,),
             Container(
              width: Get.width,
              height: Get.height * 0.12,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('Auto Expand Reading & Dosages',
                    style: TextStyle(
                      fontSize: 16,
                    
                      color: Colors.black
                    ),),
                     Text('Sync occurs if atleast 5 minutes have\npassed since your last sync/.',
                    style: TextStyle(
                      fontSize: 14,
                    
                      color: Colors.grey
                    ),),
                      ],
                    ),
                    AdvancedSwitch(
                    controller: _controller,
                    activeColor: yellowColor,
                    inactiveColor: Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    width: 60.0,
                    height: 30.0,
                    enabled: true,
                    disabledOpacity: 0.5,
                  ),
                  ],
                ),
              ),
             ),
             //
             
             const  SizedBox(height: 20,),
             Container(
              width: Get.width,
              height: Get.height * 0.12,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('Auto Expand Reading & Dosages',
                    style: TextStyle(
                      fontSize: 16,
                    
                      color: Colors.black
                    ),),
                     Text('Sync occurs if atleast 5 minutes have\npassed since your last sync/.',
                    style: TextStyle(
                      fontSize: 14,
                    
                      color: Colors.grey
                    ),),
                      ],
                    ),
                    AdvancedSwitch(
                    controller: _controller,
                    activeColor: yellowColor,
                    inactiveColor: Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    width: 60.0,
                    height: 30.0,
                    enabled: true,
                    disabledOpacity: 0.5,
                  ),
                  ],
                ),
              ),
             ),
             //
                const  SizedBox(height: 20,),
                CustomButtonWidget(color: Colors.grey,
                 text: 'Terms Of Service', ontap: (){}, textColor: Colors.white),
                   //
                const  SizedBox(height: 20,),
                CustomButtonWidget(color: Colors.grey,
                 text: 'Privacy Policy', ontap: (){}, textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}