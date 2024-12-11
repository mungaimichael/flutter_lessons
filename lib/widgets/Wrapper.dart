import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/util/dio_functions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Wrapper extends StatelessWidget {
  final String text1;
  final String text2;
  final String img;
  // final Widget nextScreen;
  final Widget skip;
  final String nextScreen;

  const Wrapper({super.key,
    required this.text1, required this.text2, required this.img, required this.nextScreen, required this.skip
  });

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
            SizedBox(
              height: 450,
              width: double.infinity,
              child:
              Image.asset('assets/$img.png', fit: BoxFit.cover),
            ),
            Text(
              textAlign: TextAlign.center,
              text1,
              style: GoogleFonts.poppins(
                  fontSize: 26, fontWeight: FontWeight.w700 ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: 400,
                child: Text(
                  textAlign: TextAlign.center,
                  text2,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SizedBox(
                      width: 350,
                      height: 45,

                      child: FloatingActionButton(
                        onPressed: () {
                              Get.toNamed("/$nextScreen");
                        },
                        elevation: 0,
                        backgroundColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text("Next", style: GoogleFonts.poppins(
                            fontSize: 19,
                            color: Colors.white
                        ),),


                      ),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 45,

                    child: FloatingActionButton(
                      onPressed: () async {
                        var response = await getProducts();
                        print(response);

                      },
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Skip", style: GoogleFonts.poppins(
                          fontSize: 19,
                          color: Colors.orangeAccent
                      ),),

                    ),
                  )
                ],
              ),
            )

          ],
        ));
  }

}