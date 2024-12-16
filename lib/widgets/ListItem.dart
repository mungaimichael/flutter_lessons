import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subtitle;

  const ListItem({super.key, required this.title, required this.icon, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12,right: 12),
        child: SizedBox(

          height: 50,
          child: Row(

            children: [
              Icon(icon, color: Colors.blueAccent, size: 30,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade100,
                    borderRadius: BorderRadius.circular(4)
                ),
                padding: const EdgeInsets.all(4),
                child: Text(title,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w300
                    )),
              ),
            ],
          ),

        ),
      );

  }
}