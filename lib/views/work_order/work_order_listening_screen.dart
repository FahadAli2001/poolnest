import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/icons.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/views/work_order/add_work_order_screen.dart';
import 'package:poolnest/views/work_order/edit_work_order_screen.dart';
import 'package:poolnest/widgets/work_order/custom_work_order_listening_widget.dart';

class WorkOrderListeningScreen extends StatelessWidget {
  const WorkOrderListeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Work Orders",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
            ),
            Text(
              "Thursday,23 Feb",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Image.asset(workOrderIcon),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=>const AddWorkOrderScreen());
            },
            child: Image.asset(addBtn)),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(horizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: Get.height * 0.08,
                    width: Get.width * 0.74,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          hintText: 'Search Customer',
                          helperStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  Image.asset(
                    mapIcon,
                    height: 70,
                  )
                ],
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              const Text(
                'Monday ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Technician Name ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: Get.width * 0.27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: yellowColor),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'WorkOrders',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
             for(var i =0; i < 3 ;i++)...[
            GestureDetector(
              onTap: () {
                Get.to(()=>const EditWorkOrderScreen());
              },
              child: const  CustomWorkOrderListeningWidget())
             ]
            ],
          ),
        ),
      ),
    );
  }
}
