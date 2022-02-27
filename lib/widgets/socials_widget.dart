import 'package:emirsurmen_com/utils/animation_utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'expanded_section.dart';

class SocialsWidget extends StatefulWidget {
  @override
  State<SocialsWidget> createState() => _SocialsWidgetState();
}

class _SocialsWidgetState extends State<SocialsWidget> with SingleTickerProviderStateMixin {
  AnimationController expandController;
  Animation<double> animation;
  AnimationUtils animationController;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    animationController = AnimationUtils(
      isExpanded: _isExpanded,
      parent: this
    );
    animationController.prepareAnimations();
    animationController.runExpandCheck();
  }

  SnackBar snackBar = SnackBar(
    content: Text(
      "Copied Discord username to clipboard!",
      style: GoogleFonts.inconsolata(
          color: Colors.white,
      ),
    ),
    behavior: SnackBarBehavior.floating,
  );

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
          onPressed: () => setState(() {_isExpanded = !_isExpanded;}),
        ),
        ExpandedSection(
          expand: _isExpanded,
          child: GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: "MakufonSkifto#1414"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: AutoSizeText(
              "MakufonSkifto#1414",
              style: GoogleFonts.inconsolata(
                  color: Colors.white,
                  fontSize: 27
              ),
              maxFontSize: 27,
              maxLines: 1,
            ),
          )
        )
      ],
    );
  }
}