import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/widgets/customer/custom_profile_widget.dart';
import 'package:poolnest/widgets/customer/customer_service_location.dart';

// ignore: must_be_immutable
class EditCustomer extends StatelessWidget {
  EditCustomer({super.key});
  var isProfile = true.obs;
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
        title:const Text(
          "Edit Customer",
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Image.asset(doneBtn),
          SizedBox(
            width: Get.width * 0.05,
          )
        ],
      ),
      body: Obx(()=>
          Padding(
          padding:   EdgeInsets.symmetric(
              horizontal: isProfile.value == true?horizontalPadding:0, vertical: isProfile.value == true?verticalPadding:0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  ()=>  Padding(
                    padding:   EdgeInsets.symmetric(horizontal: isProfile.value == false ?horizontalPadding:0,vertical: isProfile.value == false?verticalPadding:0),
                    child: Container(
                      width: Get.width,
                      height: Get.height * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                isProfile.value = true;
                              },
                              child: Obx(
                                () => Container(
                                  width: isProfile.value == true
                                      ? Get.width * 0.45
                                      : Get.width * 0.4,
                                  decoration: BoxDecoration(
                                      color: isProfile.value == true
                                          ? yellowColor
                                          : Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                isProfile.value = false;
                              },
                              child: Obx(
                                () => Container(
                                  width: isProfile.value == false
                                      ? Get.width * 0.45
                                      : Get.width * 0.4,
                                  decoration: BoxDecoration(
                                      color: isProfile.value == false
                                          ? yellowColor
                                          : Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      'Service Location',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                //
                Obx(() => isProfile.value == true
                    ? CustomProfileWidget()
                    : const CustomerServiceLocationWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
