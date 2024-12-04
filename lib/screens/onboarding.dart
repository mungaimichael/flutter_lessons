import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lessons/screens/home.dart';
import 'package:flutter_lessons/widgets/Wrapper.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.black

          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottomOpacity: 3.5,
          title: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("TaskTugas",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                  ),

                ),
              ),
            ],
          ),
          titleTextStyle: const TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        body: const Wrapper(text1: "Be a Flutter Ninja Faster than Ever", text2: "Flutter provides a complete system for navigating between screens and handling deep links. Small applications without complex deep linking can use Navigator", img: '2', nextScreen: Home()),
    );
  }
}