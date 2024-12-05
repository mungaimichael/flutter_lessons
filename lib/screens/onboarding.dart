import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/home.dart';
import 'package:flutter_lessons/widgets/AppbarWidget.dart';
import 'package:flutter_lessons/widgets/Wrapper.dart';

import 'login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarWidget(),
        body: Wrapper(text1: "Be a Flutter Ninja Faster than Ever", text2: "Flutter provides a complete system for navigating between screens and handling deep links. Small applications without complex deep linking can use Navigator", img: '2', nextScreen: Login(), skip: Login(),),
    );
  }
}