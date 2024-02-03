import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/icons.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

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
          Image.asset(addBtn),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(horizontalPadding),
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
          ],
        ),
      ),
    );
  }
}
