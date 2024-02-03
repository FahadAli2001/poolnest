import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/views/customer/add_item_screen.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

class PoolScreen extends StatelessWidget {
  const PoolScreen({super.key});

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
          "Location Name",
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * 2.7,
            ),
            //
               Positioned(
            top: Get.height * 2.29,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: verticalPadding, horizontal: horizontalPadding),
              child: Column(
                children: [
                  Container(
                    width: Get.width * 0.9,
                    height: Get.height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pool 2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              '+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width * 0.9,
                    height: Get.height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pool 3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              '+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: Get.width * 0.9,
                      child:   CustomButtonWidget(
                        textColor: Colors.white,
                        ontap: () {
                          
                        },
                          color: primaryColor,
                          text: 'Add New Pool'))
                ],
              ),
            ),
          ),
          //
            Positioned(
              top: Get.height * 0.08,
              child: Container(
                width: Get.width,
               // height: Get.height * 2.1 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: verticalPadding, horizontal: horizontalPadding),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Route Assignment Info",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: Get.height * 0.08,
                          child: const CustomTextFlieldWidget(
                            hintText: "Tech",
                            borderSide: BorderSide.none,
                            sufficIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: Get.height * 0.08,
                          child: const CustomTextFlieldWidget(
                            hintText: "Day of the week",
                            borderSide: BorderSide.none,
                            sufficIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: Get.height * 0.08,
                          child: const CustomTextFlieldWidget(
                            hintText: "Frequency",
                            borderSide: BorderSide.none,
                            sufficIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: Get.height * 0.08,
                          child: const CustomTextFlieldWidget(
                            hintText: "Start on",
                            borderSide: BorderSide.none,
                            sufficIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: Get.height * 0.08,
                          child: const CustomTextFlieldWidget(
                            hintText: "Stop on",
                            borderSide: BorderSide.none,
                            sufficIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.grey,
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding,
                              vertical: verticalPadding),
                          child: Column(
                            children: [
                                Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                               const   Text(
                                    "Item Needed",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(()=>const AddItemsScreen());
                                    },
                                    child:const Text(
                                      "+ Add Item",
                                      style: TextStyle(
                                          color: yellowColor, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                  child: Text(
                                    "Product Name",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                  child: Text(
                                    "Product Name",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding,
                              vertical: verticalPadding),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Work Order(s)",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    "+ Add New",
                                    style: TextStyle(
                                        color: yellowColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: Get.width * 0.7,
                                    height: Get.height * 0.08,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade300),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Center(
                                          child: Text(
                                            "Assigned to {technician name}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            "Assigned to {technician name}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                    size: 40,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding,
                              vertical: verticalPadding),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Equipment",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    "+ Add ",
                                    style: TextStyle(
                                        color: yellowColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                  child: Text(
                                    "Pump: Aqua-Flo A Series Bronze 1/2 HP",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                  child: Text(
                                    "Pump: Aqua-Flo A Series Bronze 1/2 HP",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding,
                              vertical: verticalPadding),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "CheckList",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    "Swipe to complete",
                                    style: TextStyle(
                                        color: yellowColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: horizontalPadding),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Center(
                                        child: Text(
                                          "Filter Clean",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Done 2w ago",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: Get.width,
                                height: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: horizontalPadding),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Center(
                                        child: Text(
                                          "Pool Drain",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Done 2w ago",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                        Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: horizontalPadding,
                              vertical: verticalPadding),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Images/Videos",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    "+ Add ",
                                    style: TextStyle(
                                        color: yellowColor, fontSize: 16),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(poolImage),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                  child: Text(
                                    "See All",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                        color: Colors.grey.shade500, fontSize: 16),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Positioned(
              top: Get.height * 0.04,
              left: 15,
              right: 15,
              child: Container(
                width: Get.width * 0.8,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(15)),
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pool Name',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      '-',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
