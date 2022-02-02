import 'package:emirsurmen_com/widgets/about_text.dart';
import 'package:emirsurmen_com/widgets/animated_name.dart';
import 'package:emirsurmen_com/widgets/resume_button.dart';
import 'package:emirsurmen_com/widgets/socials_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedName(text: "emirsurmen", text2: "makufonskifto"),
              AboutText(),
              SocialsWidget(),
              ResumeButton()
            ],
          ),
        )
      ),
    );
  }
}
