import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffee_Categry extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final Function() onTop;

  Coffee_Categry({
    required this.coffeeType,
    required this.isSelected,
    required this.onTop,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeeType,
          style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.grey[700]),
        ),
      ),
    );
  }
}
