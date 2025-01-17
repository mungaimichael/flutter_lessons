import 'package:flutter/material.dart';
import 'package:flutter_lessons/widgets/AppbarWidget.dart';
import 'package:flutter_lessons/widgets/Wrapper.dart';

import 'login.dart';


class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        appBar:  AppbarWidget(),
        body: Wrapper(
          text1: "Make Learning Flutter Easy, Fast and Fun"
        , text2: "When someone learning Flutter asks you why some widget with width: 100 isn't 100 pixels wide", img: 'onboarding', nextScreen: "onboarding", skip: Login(), ),

    );
  }
}
