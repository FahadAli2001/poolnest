import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';

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
        Obx(()=>
             DropdownButtonHideUnderline(
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
            height: Get.height*0.08,
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
      const  SizedBox(
          height: 20,
        ),
      Container(
        width: Get.width,
        height: Get.height*0.08,
      //  padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const  Text('Customer Prospect',
              style: TextStyle(
                color: Colors.black
              ),),
              AdvancedSwitch(
    controller: _controller,
    activeColor: yellowColor,
    inactiveColor: Colors.grey,
  
    // activeImage: AssetImage('assets/images/on.png'),
    // inactiveImage: AssetImage('assets/images/off.png'),
    borderRadius:const BorderRadius.all(  Radius.circular(15)),
    width: 60.0,
    height: 30.0,
    enabled: true,
    disabledOpacity: 0.5,
),
            ],
          ),
        ),
      )
      ],
    );
  }
}