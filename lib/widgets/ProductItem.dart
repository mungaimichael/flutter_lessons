import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  const ProductItem({super.key, required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(

              width: 150,
              height: 200,
              child: Image.network(image, fit: BoxFit.contain,)),
          Text(title, style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600
          )),
          Text(price, style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600
          )),
        ],
      ),
    );
  }
}