import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:google_fonts/google_fonts.dart';


class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Work", style: GoogleFonts.inconsolata(color: Colors.white)),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context), tooltip: "Back"),
      ),
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
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
                          leading: FaIcon(FontAwesomeIcons.robot, color: Colors.pink,),
                          title: Text('Meon', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("A multi-purpose bot capable of moderating, displaying news, detailed coronavirus stats, Hypixel stats, and more.", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("VISIT WEBSITE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://meonbot.xyz/");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.discord, color: Colors.pink),
                          title: Text('Meon Dashboard', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("Dashboard for my Discord bot Meon made out of pure Python", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("VIEW WEBSITE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://dashboard.meonbot.xyz");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
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
                          leading: FaIcon(FontAwesomeIcons.reddit, color: Colors.deepOrangeAccent),
                          title: Text('RedditEasy', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("RedditEasy is an API wrapper for getting posts using the Reddit JSON API with both normal and async options", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("SOURCE CODE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://github.com/MakufonSkifto/RedditEasy");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
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
                          leading: FaIcon(FontAwesomeIcons.discord, color: Colors.blueAccent,),
                          title: Text('DiscordRP', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("Discord Rich Presence program made in C#", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("SOURCE CODE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://github.com/MakufonSkifto/discordrp");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
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
                          leading: FaIcon(FontAwesomeIcons.virus, color: Colors.red,),
                          title: Text('corona-python', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("A Python API Wrapper for coronavirus stats", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("SOURCE CODE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://github.com/MakufonSkifto/corona-python");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.smile, color: Colors.yellow),
                          title: Text('Emojifier', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("Emojifier is a module for emojifying text", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("SOURCE CODE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://github.com/MakufonSkifto/Emojifier");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.building, color: Colors.yellow),
                          title: Text('View MET', style: GoogleFonts.inconsolata(color: Colors.white),),
                          subtitle: Text("See your favorite Metropolitan Museum of Art pieces with 1 click.", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("SOURCE CODE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://github.com/MakufonSkifto/view_met");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.googlePlay, color: Colors.lightBlueAccent),
                          title: Text('Google Play Apps', style: GoogleFonts.inconsolata(color: Colors.white)),
                          subtitle: Text("See all of me and my friends' apps released on Google Play Store", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("VISIT DEVELOPER PAGE", style: GoogleFonts.inconsolata(color: Colors.white),),
                              onPressed: () {
                                launch("https://play.google.com/store/apps/dev?id=7307516551412925597");
                              },
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: "And more...",
                      style: GoogleFonts.inconsolata(color: Colors.white),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        launch("https://github.com/MakufonSkifto?tab=repositories");
                      }
                    )
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
