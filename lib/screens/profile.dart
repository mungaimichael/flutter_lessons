import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return (
          Container(padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
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
                      left:120,
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
                )

              ],
            ),
          )
    );

  }

}