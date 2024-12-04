import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lessons/screens/onboarding.dart';
import 'package:flutter_lessons/widgets/Wrapper.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.orange),
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
                child: Text(
                  "FlutterGrow",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          titleTextStyle: const TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        body: const Wrapper(
          text1: "Make Learning Flutter Easy, Fast and Fun"
        , text2: "When someone learning Flutter asks you why some widget with width: 100 isn't 100 pixels wide", img: 'onboarding', nextScreen: Onboarding(), ),


    );
  }
}
