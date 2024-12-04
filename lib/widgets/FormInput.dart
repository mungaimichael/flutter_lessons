import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormInput extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final Function(String b) fun ;

  const FormInput({super.key, required this.controller, required this.icon, required this.fun});
  @override
  State<FormInput> createState() {
    return _FormState();
  }


}


class _FormState extends State<FormInput> {




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4),
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey
      ),
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4),
            child: Icon(widget.icon),
          ),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              onChanged: (string) {
                widget.fun(widget.controller.text);
                print(widget.controller.text);
              },
              style: GoogleFonts.poppins(),decoration: const InputDecoration(
              border: InputBorder.none,
            ),),
          )
        ],
      ),
    );

  }


}

