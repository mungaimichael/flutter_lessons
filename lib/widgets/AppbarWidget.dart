import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      automaticallyImplyLeading: false,
      systemOverlayStyle:
      const SystemUiOverlayStyle(statusBarColor: Colors.orange),
      backgroundColor: Colors.white,
      centerTitle: true,
      bottomOpacity: 3.5,
      title:
      Row(
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}