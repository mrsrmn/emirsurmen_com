import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_widgets.dart';


class SocialsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        runSpacing: 5,
        alignment: WrapAlignment.start,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(FontAwesomeIcons.github, color: Colors.white, size: 35),
            onPressed: () => launchUrl(Uri.parse("https://github.com/MakufonSkifto")),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white, size: 35),
            onPressed: () => launchUrl(Uri.parse("https://www.linkedin.com/in/emir-surmen/")),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 35),
            onPressed: () => launchUrl(Uri.parse("https://twitter.com/makufon")),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(FontAwesomeIcons.stackOverflow, color: Colors.white, size: 35),
            onPressed: () => launchUrl(Uri.parse("https://stackoverflow.com/users/12920146/emir-s%C3%BCrmen")),
          ),
          ContactWidgets()
        ],
      ),
    );
  }
}