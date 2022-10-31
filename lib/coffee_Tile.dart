import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImages;
  final String coffeeName;
  final String coffeepreice;
  final String coffeeSubTitle;

  CoffeeTile({
    required this.coffeeImages,
    required this.coffeeName,
    required this.coffeepreice,
    required this.coffeeSubTitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        bottom: 25,
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 18, 13, 13),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImages)),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: GoogleFonts.bebasNeue(fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    coffeeSubTitle,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ $coffeepreice",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 25,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
