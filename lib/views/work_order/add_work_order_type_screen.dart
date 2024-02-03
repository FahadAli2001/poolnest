import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

class AddWorkOrderTypeScreen extends StatelessWidget {
  AddWorkOrderTypeScreen({super.key});

  final controller = ValueNotifier<bool>(false);

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
        title:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Work Order Type",
              style: TextStyle(
                  color: primaryColor, fontWeight: FontWeight.bold),
            ),
              Text(
              "Product",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Basic Info",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: Get.height * 0.08,
                  child: CustomTextFlieldWidget(
                      hintText: "Type Name",
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: Get.height * 0.1,
                  child: CustomTextFlieldWidget(
                      hintText: "Default Description",
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: Get.height * 0.1,
                      width: Get.width * 0.42,
                      child: CustomTextFlieldWidget(
                          hintText: "Color Code",
                          sufficIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          borderSide: BorderSide(color: Colors.grey.shade300))),
                  SizedBox(
                      height: Get.height * 0.1,
                      width: Get.width * 0.42,
                      child: CustomTextFlieldWidget(
                          hintText: "Recurs",
                          sufficIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          borderSide: BorderSide(color: Colors.grey.shade300))),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Default Info",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: Get.height * 0.08,
                  child: CustomTextFlieldWidget(
                      hintText: "Work Needed",
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: Get.height * 0.1,
                      width: Get.width * 0.42,
                      child: CustomTextFlieldWidget(
                          hintText: "Est Min",
                          sufficIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          borderSide: BorderSide(color: Colors.grey.shade300))),
                  SizedBox(
                      height: Get.height * 0.1,
                      width: Get.width * 0.42,
                      child: CustomTextFlieldWidget(
                          hintText: "Shedule Time",
                          sufficIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          borderSide: BorderSide(color: Colors.grey.shade300))),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: Get.height * 0.08,
                  child: CustomTextFlieldWidget(
                      hintText: "Labour Cost",
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Line Items Default For Invoice",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "NOTE: Installed items will be listed separately on the\ninvoice are set under Settings > Invoicing",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Line Items Name",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(radioOffBtn),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Use Work Needed",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(radioOnBtn),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Use Work Performed",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Line Items Name",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(radioOffBtn),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Price is Taxable",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(radioOnBtn),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Use Price from Work Order",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
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
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Default Email Subject",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Text(
                            "Your Pool Is now Sparkling Clean",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Default Email Message",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                      )
                    ],
                  ),
                ),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "CheckList",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Filter Clean",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Done 2w ago",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: horizontalPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pool Drain",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Done 2w ago",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'This work needed to be invoiced',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      AdvancedSwitch(
                        controller: controller,
                        activeColor: yellowColor,
                        inactiveColor: Colors.grey,

                        // activeImage: AssetImage('assets/images/on.png'),
                        // inactiveImage: AssetImage('assets/images/off.png'),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
                const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Alert office when work order added',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      AdvancedSwitch(
                        controller: controller,
                        activeColor: yellowColor,
                        inactiveColor: Colors.grey,

                        // activeImage: AssetImage('assets/images/on.png'),
                        // inactiveImage: AssetImage('assets/images/off.png'),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
                const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Require a photo to finish',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      AdvancedSwitch(
                        controller: controller,
                        activeColor: yellowColor,
                        inactiveColor: Colors.grey,
 
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
              //
                const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Email the customer when finished',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      AdvancedSwitch(
                        controller: controller,
                        activeColor: yellowColor,
                        inactiveColor: Colors.grey,
 
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
              //
                const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Allow techs to add this type',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      AdvancedSwitch(
                        controller: controller,
                        activeColor: yellowColor,
                        inactiveColor: Colors.grey,
 
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
              const SizedBox(
                height: 20,
              ),
              //
              CustomButtonWidget(color: yellowColor, text: 'Save',
               ontap: (){}, textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
