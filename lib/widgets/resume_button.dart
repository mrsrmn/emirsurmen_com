import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Align(
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
          icon: Icon(Icons.insert_drive_file, color: Colors.white),
          label: Text(
            "my resume",
            style: GoogleFonts.inconsolata(
              color: Colors.white,
              fontSize: 20
            )
          ),
          onPressed: () => launch("https://docs.google.com/document/d/1p3_15SjFiUw12lkRUIn1Gjknq_QAqfZ3p0IsAhX-n9w/edit?usp=sharing"),
        ),
      ),
    );
  }
}