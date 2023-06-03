import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() onPressed;

  const CustomButton({
    required this.text,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            )
          )
        ),
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: GoogleFonts.inconsolata(
            color: Colors.white,
            fontSize: 17
          )
        ),
        onPressed: onPressed
      ),
    );
  }
}