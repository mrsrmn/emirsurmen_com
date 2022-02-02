import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          "hello! i am emir, i'm 16 and living in istanbul, turkey."
          " i'm a mobile developer and"
          " i work with flutter.",
          style: GoogleFonts.inconsolata(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      )
    );
  }
}