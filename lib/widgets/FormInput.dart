import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormInput extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final String label;
  final Function(String b) fun ;

  const FormInput({super.key, required this.controller, required this.icon, required this.fun, required this.label});
  @override
  State<FormInput> createState() {
    return _FormState();
  }


}


class _FormState extends State<FormInput> {




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      padding: EdgeInsets.only(left: 4),
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      width: 350,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 8),
            child: Icon(widget.icon),
          ),
          Expanded(
            child: TextFormField(

              controller: widget.controller,
              onChanged: (string) {
                widget.fun(widget.controller.text);
                print(widget.controller.text);
              },
              style: GoogleFonts.poppins(),decoration:  InputDecoration(
              label:Text(widget.label,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  color: Colors.black54
                ),
              ),
              border: InputBorder.none,
            ),),
          )
        ],
      ),
    );

  }


}

