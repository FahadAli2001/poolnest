import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/widgets/custom_button_widget.dart';
import 'package:poolnest/widgets/custom_textFlied.dart';

// ignore: must_be_immutable
class CustomProfileWidget extends StatelessWidget {
  CustomProfileWidget({super.key});

  final List<String> items = [
    'Inactive',
    'Active',
  ];
  var selectedValue = 'Inactive'.obs;
// ...
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              // hint: const Row(
              //   children: [
              //     Icon(
              //       Icons.list,
              //       size: 16,
              //       color: Colors.yellow,
              //     ),
              //     SizedBox(
              //       width: 4,
              //     ),
              //     Expanded(
              //       child: Text(
              //         'Select Item',
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.yellow,
              //         ),
              //         overflow: TextOverflow.ellipsis,
              //       ),
              //     ),
              //   ],
              // ),
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ))
                  .toList(),
              value: selectedValue.value,
              onChanged: (value) {
                selectedValue.value = value!;
              },
              buttonStyleData: ButtonStyleData(
                height: Get.height * 0.08,
                width: Get.width,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                elevation: 2,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                offset: const Offset(-20, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(10),
                  thickness: MaterialStateProperty.all(6),
                  thumbVisibility: MaterialStateProperty.all(true),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.only(left: 14, right: 14),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: Get.width,
          height: Get.height * 0.08,
          //  padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Customer Prospect',
                  style: TextStyle(color: Colors.black),
                ),
                AdvancedSwitch(
                  controller: _controller,
                  activeColor: yellowColor,
                  inactiveColor: Colors.grey,

                  // activeImage: AssetImage('assets/images/on.png'),
                  // inactiveImage: AssetImage('assets/images/off.png'),
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
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const CustomTextFlieldWidget(hintText: 'First Name',borderSide: BorderSide(
                      color: Colors.grey
                     ),)
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const CustomTextFlieldWidget(hintText: 'Last Name',borderSide: BorderSide(
                      color: Colors.grey
                     ),)
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: Get.width,
          height: Get.height * 0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'Tag goes here',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  // width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'tags',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  // width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'tags',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  // width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      '22+',
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
        SizedBox(
          height: Get.height * 0.08,
          child: const CustomTextFlieldWidget(hintText: "City",borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: "State",borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Zip Code',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Company Name',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Company Code',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Billing Address',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const CustomTextFlieldWidget(hintText: 'Billing Notes',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Home Phone (Primary)',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const  CustomTextFlieldWidget(hintText: 'Email (Primary)',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: Get.height * 0.08,
          child:const CustomTextFlieldWidget(hintText: 'Mobile (Secandary)',borderSide: BorderSide(
                      color: Colors.grey
                     ))
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: Get.width,
          height: Get.height * 0.08,
          //  padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Use Billing Address',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
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
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
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
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
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
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
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
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
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
          CustomButtonWidget(
             textColor: Colors.white,
            ontap: () {
              
            },
            color: yellowColor, text: 'SAVE')
      ],
    );
  }
}
