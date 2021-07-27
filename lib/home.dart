import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:google_fonts/google_fonts.dart';

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
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Emir Sürmen",
                  style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 25),
                ),
                Text(
                    "Welcome to my website",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Inconsolata"
                    )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: ElevatedButton(
                              child: Text("Work",
                                style: GoogleFonts.inconsolata(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.black),
                                  shadowColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.white)
                                      )
                                  )
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/work");
                              }
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: ElevatedButton(
                              child: Text("Experience",
                                style: GoogleFonts.inconsolata(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.black),
                                  shadowColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.white)
                                      )
                                  )
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/experience");
                              }
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: ElevatedButton(
                              child: Text("Education",
                                style: GoogleFonts.inconsolata(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.black),
                                  shadowColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          side: BorderSide(color: Colors.white)
                                      )
                                  )
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/education");
                              }
                          ),
                        ),
                      ],
                    )
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Column(
                    children: <Widget>[
                      Text('About Me', style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 20), textAlign: TextAlign.center),
                      Text("Hi, I am Emir, I'm non-binary person living in Istanbul, Turkey. I enjoy programming in my spare time.\n I know 3 languages; Dart, Python and C#. I am a proficient in Python."
                          " \nI am currently working on Flask (Python) web apps and Flutter (Dart) Android / iOS application. I am currently learning Kotlin.",
                          style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 15), textAlign: TextAlign.center),
                    ],
                  ),
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      width: 1000,
                      child: Card(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              title: Text('Profiles', style: GoogleFonts.inconsolata(color: Colors.white,), textAlign: TextAlign.center,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://github.com/MakufonSkifto");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.github, color: Colors.white,),
                                          SizedBox(width: 5),
                                          Text("GitHub", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://www.linkedin.com/in/emir-surmen/");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue),
                                          SizedBox(width: 5),
                                          Text("LinkedIn", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://twitter.com/EmirSurmenn");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlueAccent),
                                          SizedBox(width: 5),
                                          Text("Twitter", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://stackoverflow.com/users/12920146/emir-s%C3%BCrmen");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.stackOverflow, color: Colors.deepOrangeAccent),
                                          SizedBox(width: 5),
                                          Text("Stack Overflow", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://discord.com/users/444550944110149633");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.discord, color: Colors.blueAccent),
                                          SizedBox(width: 5),
                                          Text("Discord", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      launch("https://pypi.org/user/MakufonSkifto/");
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FaIcon(FontAwesomeIcons.python, color: Colors.yellow),
                                          SizedBox(width: 5),
                                          Text("PyPI", style: GoogleFonts.inconsolata(color: Colors.white), textAlign: TextAlign.center,)
                                        ],
                                      ),
                                    )
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
