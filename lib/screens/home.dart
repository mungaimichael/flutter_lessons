import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.black),
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
                  "TaskTugas",
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
        body: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child:
                      Image.asset('assets/onboarding.png', fit: BoxFit.cover),
                ),
                Text(
                  "Team up for Success",
                  style: GoogleFonts.poppins(
                      fontSize: 28, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: 400,
                    child: Text(
                      textAlign: TextAlign.center,
                      "When someone learning Flutter asks you why some widget with width: 100 isn't 100 pixels wide",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Get.to(()=>Onboarding());
                    },
                    child: Text("Next"),
                    elevation: 0,
                    backgroundColor: Colors.orangeAccent,
                  ),
                )
              ],
            )));
  }
}
