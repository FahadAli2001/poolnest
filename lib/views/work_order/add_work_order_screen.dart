import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

import '../../utils/colors.dart';

class AddWorkOrderScreen extends StatelessWidget {
  const AddWorkOrderScreen({super.key});

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
        title: const Text(
          "Location Name",
          style: TextStyle(
              fontSize: 20,
              color: primaryColor,
              fontWeight: FontWeight.bold),
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
              height: Get.height * 1.6,
              width: Get.width,
            ),
            Positioned(
              top: 0,
              child: Container(
                  width: Get.width,
                  height: Get.height * 1.6,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Work Order Type",
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
                              hintText: "Customer Name",
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
                              hintText: "Service Location",
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
                              hintText: "Pool/SPA",
                              sufficIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Work Needed",
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Work Performed",
                              borderSide: BorderSide.none,
                            )),
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
                              hintText: "Dates",
                              sufficIcon: Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                              ),
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: Get.width * 0.42,
                                height: Get.height * 0.08,
                                child: const CustomTextFlieldWidget(
                                  hintText: "Est Min",
                                  borderSide: BorderSide.none,
                                )),
                            SizedBox(
                                width: Get.width * 0.42,
                                height: Get.height * 0.08,
                                child: const CustomTextFlieldWidget(
                                  hintText: "Shedule Time",
                                  borderSide: BorderSide.none,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Labour Cost",
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Price",
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: Get.height * 0.08,
                            child: const CustomTextFlieldWidget(
                              hintText: "Notes",
                              borderSide: BorderSide.none,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Work Order Assigned Route",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alisher Jalpani",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Thursday , Weekly",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "02 Oct 2023, No End",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}