

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main () {
  runApp(const MaterialApp(
    home: Home()
  ));
}


class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent

        ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          bottomOpacity: 3.5,
          title: const Text("Home"),
          titleTextStyle: const TextStyle(
              fontSize: 26,
              fontFamily: "Montserrat"
          ),
      ),
          body: Container(
            color: Colors.white,
            height: double.infinity ,
            width: double.infinity,
            child: const Text("Hello World", style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline
            ),),
          )
    );
  }
}