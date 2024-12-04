

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lessons/widgets/AppbarWidget.dart';
import 'package:flutter_lessons/widgets/FormInput.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
  
}

class _LoginScreenState extends State<Login> {


  String val = '';
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  handleInputChange ( String field) {
    setState(() {
      val=  field ;
    });
  }



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: const AppbarWidget(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 600,
            width: double.infinity,
            child: Column(
              children: [
                Text("Welcome to FlutterGrow",
                style: GoogleFonts.poppins(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text("Sign up or login to manage your learning in a simole and esaier way",
                      textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                ),

               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.black12,

                 ),
                 width: double.infinity,
                 height: 300,


                 child: Form(child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FormInput(controller: emailController, icon: Icons.icecream, fun: handleInputChange,),

                      Text(emailController.text)


                    ],
                  )
                 ),
               ),
                // Text(value)
              ],
            )
          ),
        )
      );
      }
  
}