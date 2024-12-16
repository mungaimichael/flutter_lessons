import 'package:flutter/material.dart';
import 'package:flutter_lessons/widgets/AppbarWidget.dart';
import 'package:flutter_lessons/widgets/Wrapper.dart';

import 'login.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppbarWidget(),
        body: Wrapper(text1: "Be a Flutter Ninja Faster than Ever", text2: "Flutter provides a complete system for navigating between screens and handling deep links. Small applications without complex deep linking can use Navigator", img: '2', nextScreen:"login", skip: Login(),),
    );
  }
}