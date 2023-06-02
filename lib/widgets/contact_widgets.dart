import 'dart:html' as html;

import 'package:emirsurmen_com/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          text: "my resume",
          icon: Icons.insert_drive_file,
          onPressed: () {
            html.AnchorElement anchorElement = html.AnchorElement(
                href: "assets/Resume.pdf"
            );
            anchorElement.download = "Emir Sürmen.pdf";
            anchorElement.click();
          },
        ),
        SizedBox(width: 10,),
        CustomButton(
          text: "contact me",
          icon: Icons.alternate_email,
          onPressed: () {
            launchUrl(Uri.parse("mailto:emirsurmen@gmail.com"));
          },
        )
      ],
    );
  }
}