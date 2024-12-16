import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget{
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            "About",
            style: GoogleFonts.poppins(
              decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 26, fontWeight: FontWeight.w700 ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              width: 400,
              child: Text(
                textAlign: TextAlign.center,
                "This is a about page",
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}