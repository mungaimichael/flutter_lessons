import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/login.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/ListItem.dart';


class Profile extends GetView {

  RxInt currentIndex = 0.obs;


  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        // bottomNavigationBar: Obx(()=>BottomNavigationBar(
        //   onTap: (index){
        //     currentIndex.value = index;
        //   },
        //   currentIndex: currentIndex.value,
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'Settings',
        //     ),
        //   ],
        // )),
        body: Container(padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Stack(
                children: [
                  Container(
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                          child: Image.asset("assets/profilebg.jpg",fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    left:130,
                    bottom: 2,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/avatar.png", fit: BoxFit.scaleDown,),
                        ),
                      ),
                    ),
                  )],
              ),
              Text("John Doe", style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600
              )),
              Text("Mobile Developer", style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600

              )),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  width: 350,
                  child: Text(
                      textAlign: TextAlign.center,
                      "Take a look at my new Profile UI design for Social App design. Hope you like it! Cheers for checking ou", style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w300
                  )),
                ),
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView(
                  padding: const EdgeInsets.only(left: 8),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListItem(title: "Flutter Developer", icon: Icons.flutter_dash_sharp, subtitle: "Flutter Developer"),
                    ListItem(title: "Android Developer", icon: Icons.android, subtitle: "Android Developer"),
                    ListItem(title: "Web Developer", icon: Icons.web, subtitle: "Web Developer"),
                    ListItem(title: "iOS Developer", icon: Icons.apple, subtitle: "iOS Developer"),



                  ],
                ),
              ),
              FloatingActionButton(onPressed: (){
                Get.toNamed('about');
              })
            ],
          ),
        ),
      )
    );

  }

}