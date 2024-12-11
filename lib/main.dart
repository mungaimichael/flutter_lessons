

import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/home.dart';
import 'package:flutter_lessons/screens/login.dart';
import 'package:flutter_lessons/screens/onboarding.dart';
import 'package:flutter_lessons/screens/profile.dart';
import 'package:get/get_navigation/get_navigation.dart';


void main () {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: "/", page: ()=>const Home()),
      GetPage(name: "/onboarding", page: ()=>const Onboarding(),transition: Transition.rightToLeftWithFade),
      GetPage(name: "/login", page: ()=>const Login(),transition: Transition.rightToLeftWithFade),
      GetPage(name: "/profile", page: ()=>Profile())
    ],
  ));
}




