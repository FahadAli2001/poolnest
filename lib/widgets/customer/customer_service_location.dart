import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/views/customer/pool_screen.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';
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
            height: Get.height * 3.19,
          ),
          //
          Positioned(
            top: Get.height * 2.8,
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
                              'Service Location',
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
                              'Service Location',
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
                          text: 'Add New Service Location'))
                ],
              ),
            ),
          ),
          //
          Positioned(
            top: Get.height * 0.03,
            child: Container(
              width: Get.width * 0.98,
            //  height: Get.height * 2.8,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: verticalPadding + 30,
                    left: horizontalPadding,
                    right: horizontalPadding,
                    bottom: verticalPadding),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "First Name",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Last Name",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Mobile",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Email",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Address Line 1",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Location Code",
                              borderSide: BorderSide.none,
                            )),
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "City",
                              borderSide: BorderSide.none,
                            )),
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
                            child: const CustomTextFlieldWidget(
                              hintText: "State",
                              borderSide: BorderSide.none,
                              sufficIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            )),
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Zip Code",
                              borderSide: BorderSide.none,
                            )),
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
                            child: const CustomTextFlieldWidget(
                              hintText: "Gate Code",
                              borderSide: BorderSide.none,
                            )),
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Dog's Name",
                              borderSide: BorderSide.none,
                            )),
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
                            child: const CustomTextFlieldWidget(
                              hintText: "Rate",
                              borderSide: BorderSide.none,
                            )),
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Rate Type",
                              borderSide: BorderSide.none,
                              sufficIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            )),
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
                            child: const CustomTextFlieldWidget(
                              hintText: "Labour Cost",
                              borderSide: BorderSide.none,
                            )),
                        SizedBox(
                            width: Get.width * 0.4,
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Cost Type",
                              borderSide: BorderSide.none,
                              sufficIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Minutes at stop",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Location Notes",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: Get.height * 0.08,
                        child: const CustomTextFlieldWidget(
                          hintText: "Sales Tax Group",
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
                          minline: 1,
                          maxline: 8,
                          hintText: "Notes",
                          borderSide: BorderSide.none,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                      CustomButtonWidget(
                         textColor: Colors.white,
                      ontap: () {
                        Get.to(()=>const PoolScreen());
                      },
                        color: yellowColor, text: 'VIEW POOLS'),
                    const SizedBox(
                      height: 20,
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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Customer's Notifications",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.09,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Notify customers through \n Email on arival",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "15 Min",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.09,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Notify customers through \n Sms on arival",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "15 Min",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.09,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Notify customers on work \n Completed via Sms",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "15 Min",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.09,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Notify customers on work \n Completed via Email",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "15 Min",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 18),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: 35,
                          )
                        ],
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
                    'Service Location',
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
    );
  }
}
