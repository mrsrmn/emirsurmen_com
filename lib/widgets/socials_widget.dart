import 'package:emirsurmen_com/widgets/resume_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(FontAwesomeIcons.github, color: Colors.white, size: 35),
          onPressed: () => launch("https://github.com/MakufonSkifto"),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white, size: 35),
          onPressed: () => launch("https://www.linkedin.com/in/emir-surmen/"),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 35),
          onPressed: () => launch("https://twitter.com/MakufonSkifto"),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(FontAwesomeIcons.stackOverflow, color: Colors.white, size: 35),
          onPressed: () => launch("https://stackoverflow.com/users/12920146/emir-s%C3%BCrmen"),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(FontAwesomeIcons.discord, color: Colors.white, size: 35),
          onPressed: () => launch("https://discord.com/users/444550944110149633"),
        ),
      ],
    );
  }
}