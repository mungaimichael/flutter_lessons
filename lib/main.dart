

import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/about.dart';
import 'package:flutter_lessons/screens/home.dart';
import 'package:flutter_lessons/screens/onboardingOne.dart';
import 'package:flutter_lessons/screens/login.dart';
import 'package:flutter_lessons/screens/onboardingTwo.dart';
import 'package:flutter_lessons/screens/profile.dart';
import 'package:get/get_navigation/get_navigation.dart';


void main () {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: "/", page: ()=>const OnboardingOne()),
      GetPage(name: "/onboarding", page: ()=>const OnboardingTwo(),transition: Transition.rightToLeftWithFade),
      GetPage(name: "/home", page: ()=>Home(),transition: Transition.rightToLeftWithFade,),
      GetPage(name: "/login", page: ()=>const Login(),transition: Transition.rightToLeftWithFade),
      GetPage(name: "/profile", page: ()=>Profile()),
      GetPage(name: "/about", page: ()=>About())
    ],
  ));
}




