import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/login.dart';
import 'package:flutter_lessons/screens/products.dart';
import 'package:flutter_lessons/screens/profile.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/ListItem.dart';
import 'about.dart';


class Home extends GetView {

  RxInt currentIndex = 0.obs;


  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(

          bottomNavigationBar: Obx(()=>NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            indicatorColor: Colors.white,
            backgroundColor: Colors.orangeAccent,
            animationDuration: Duration(milliseconds: 500),
            destinations: const <NavigationDestination>[
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
              NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
            ],
            selectedIndex: currentIndex.value,
            onDestinationSelected: (value){
              currentIndex.value = value;
            },
          )),
          body: Obx(()=>changeScreen(currentIndex.value)),
        )
    );

  }

}

 Widget changeScreen(int index) {
   switch (index) {
     case 0:
        return  const ProductsScreen();
     case 1:
       return  Profile();
     case 2:
       return  About();
     default:
       return Container(padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
         height: double.infinity,
         width: double.infinity,
         color: Colors.white,
         child: Text("Home"),
       );
   }
 }