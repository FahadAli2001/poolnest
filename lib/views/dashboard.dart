import 'package:flutter/material.dart';
import 'package:poolnest/utils/colors.dart';
import 'package:poolnest/views/customer/customer_screen.dart';
import 'package:poolnest/views/settings/setting_screen.dart';
import 'package:poolnest/views/work_order/work_order_listening_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomerDashboard extends StatefulWidget {
  const CustomerDashboard({super.key});

  @override
  State<CustomerDashboard> createState() => _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {

  var _currentIndex = 1;
  List screens = [
  const  Placeholder(),
  CustomerScreen(),
  const  Placeholder(),
  const  WorkOrderListeningScreen(),
     SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: SalomonBottomBar(
          backgroundColor: primaryColor,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
             
            SalomonBottomBarItem(
              icon:const Icon(Icons.dashboard,color: Colors.white,),
              title:const Text("Dasboard",style: TextStyle(color: Colors.white),),
               
            ),

         
            SalomonBottomBarItem(
              icon:const Icon(Icons.person,color: Colors.white,),
              title:const Text("Customer",style: TextStyle(color: Colors.white),),
               
            ),

             SalomonBottomBarItem(
              icon:const Icon(Icons.route,color: Colors.white,),
              title:const Text("Route",style: TextStyle(color: Colors.white),),
               
            ),
             SalomonBottomBarItem(
              icon:const Icon(Icons.vertical_distribute,color: Colors.white,),
              title:const Text("Work Order",style: TextStyle(color: Colors.white),),
               
            ),
                SalomonBottomBarItem(
              icon:const Icon(Icons.settings,color: Colors.white,),
              title:const Text("Settings",style: TextStyle(color: Colors.white),),
               
            ),
          ],
        ),
      body: screens[_currentIndex],
    );
  }
}