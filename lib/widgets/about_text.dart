import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/calculate_age.dart';

class AboutText extends StatelessWidget {
  final DateTime birthDate = DateTime(2005, 7, 23);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          "hello! i am emir, i'm ${calculateAge(birthDate)} and i live in istanbul."
          " i'm a mobile developer and"
          " i mainly work with flutter. sometimes swift and kotlin too.",
          style: GoogleFonts.inconsolata(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      )
    );
  }
}