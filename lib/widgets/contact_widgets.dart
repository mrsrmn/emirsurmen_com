import 'dart:html' as html;

import 'package:emirsurmen_com/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          CustomButton(
            text: "my resume",
            icon: Icons.insert_drive_file,
            onPressed: () {
              html.AnchorElement anchorElement = html.AnchorElement(
                  href: "assets/Emir-Sürmen-CV.pdf"
              );
              anchorElement.download = "Emir-Sürmen-CV.pdf";
              anchorElement.click();
            },
          ),
          CustomButton(
            text: "contact me",
            icon: Icons.alternate_email,
            onPressed: () {
              launchUrl(Uri.parse("mailto:emirsurmen@gmail.com"));
            },
          )
        ],
      ),
    );
  }
}