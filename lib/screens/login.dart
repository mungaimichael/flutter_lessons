

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
  handleEmailChange ( String field) {
    setState(() {
      val=  field ;
    });
  }

  handlePasswordChange ( String field) {
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
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w300
                ),
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
                 height: 250,


                 child: Form(child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FormInput(controller: usernameController, icon: Icons.face_3_outlined, fun: handleInputChange, label: 'Username',),
                      FormInput(controller: emailController, icon: Icons.email_outlined, fun: handleEmailChange, label: 'Email',),
                      FormInput(controller: passwordController, icon: Icons.lock_clock_outlined, fun: handlePasswordChange, label: 'Password',),


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