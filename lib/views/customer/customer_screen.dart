import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/utils/icons.dart';
import 'package:poolnest/utils/images.dart';
import 'package:poolnest/utils/padding.dart';
import 'package:poolnest/views/customer/edit_customer.dart';

// ignore: must_be_immutable
class CustomerScreen extends StatelessWidget {
  CustomerScreen({super.key});

  List<String> alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'Customers ',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: Get.width * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2345',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: Get.width * 0.05,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(tagIcon),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(addBtn)
                      ],
                    ),
                  )
                ],
              ),
              //
              SizedBox(
                height: Get.height * 0.02,
              ),
              //
              Container(
                width: Get.width,
                height: Get.height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "\t All \n 199",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: Get.width * 0.04),
                    ),
                    Container(
                      width: Get.width * 0.3,
                      height: Get.height,
                      decoration: BoxDecoration(
                          color: yellowColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "\t All \n 199",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * 0.04,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      "\t All \n 199",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: Get.width * 0.04),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                height: Get.height * 0.02,
              ),
              //

              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    ),
                    hintText: "Search Customer",
                    hintStyle: TextStyle(color: Colors.grey.shade500)),
              ),
              //
              SizedBox(
                height: Get.height * 0.03,
              ),
              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * 0.8,
                    height: Get.height,
                   // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i = 0; i < 10; i++) ...[
                          Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.to(()=>  EditCustomer());
                                },
                                title: const Text(
                                  "Alisher Alwani",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                trailing: Image.asset(yellowCircle),
                              ),
                              const Divider(
                                color: Colors.grey,
                                thickness: 1,
                              )
                            ],
                          )
                        ],
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .12,
                     height: Get.height,
                    //color: Colors.pink,
                    child: Column(
                      children: [
                        for (var i = 0; i < alphabets.length; i++) ...[
                          Text(
                            alphabets[i],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade500),
                          )
                        ]
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
