import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class Experience extends StatelessWidget {

  var listOfThings = {
    "0": {
      "title": "Started AppInventor",
      "description": "In October 2017 I started using AppInventor with some help from my teacher. This was my first \"coding\" experience.",
      "date": "October 2017"
    },
    "1": {
      "title": "Tried to learn Python",
      "description": "I \"started\" learning Python but I didn't learn much. Only the basics",
      "date": "May 2018"
    },
    "2": {
      "title": "Started Using HTML a lot",
      "description": "I started doing few websites with HMTL, and I actually enjoyed it. Boups is one of my websites. It's a joke company made with my friend.",
      "date": "January 2019"
    },
    "3": {
      "title": "Learned how to use GitHub pages",
      "description": "GitHub pages is a free \"hosting\" service for website hosting, it doesn't have a lot of features like databases but its good for a simple website.",
      "date": "October 2019"
    },
    "4": {
      "title": "Started Learning Python3",
      "description": "I've decided to properly learn Python this time, and I did. I discovered PyCharm which is an IDE for Python and it made my learning a lot easier.",
      "date": "December 2019"
    },
    "5": {
      "title": "Discovered Kodular",
      "description": "Kodular is some kind of drag and drop online Android app maker, I started using it when I saw my friend using it so I decided to take a look at it.",
      "date": "December 2019"
    },
    "6": {
      "title": "Published My First App on Google Play Store",
      "description": "I launched my first app that I made with Kodular. It was not bad, but not very good either.",
      "date": "March 2020"
    },
    "7": {
      "title": "Made my first Discord Bot with Python3",
      "description": "Me and my friend Koray started to make a Discord Bot called Meon. It's actually pretty decent and useful. We are still updating it.",
      "date": "May 2020"
    },
    "8": {
      "title": "Learned how to use SQLite",
      "description": "I really wanted to learn something new, so I decided to learn SQLite which is a database type. I'm still learning more and more about SQLite",
      "date": "November 2020"
    },
    "9": {
      "title": "Made an API Wrapper for the first time",
      "description": "I \"tried\" to make an API wrapper for the official Mojang API and a Minecraft Skin API. It turned out well. You can go check it out on my PyPI profile",
      "date": "November 2020"
    },
    "10": {
      "title": "Learning Dart (Flutter)",
      "description": "Dart is a pretty new language made by Google and Flutter is a cross-platform app development kit also made by Google. It allows you to make Android, iOS, Windows, and even web apps.",
      "date": "November 2020 - Today"
    }
  };
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Experience", style: GoogleFonts.inconsolata(color: Colors.white)),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 1000,
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listOfThings.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = listOfThings[index.toString()];

                    return Container(
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
                              title: Text(item["title"], style: GoogleFonts.inconsolata(color: Colors.white),),
                              subtitle: Text(item["description"], style: GoogleFonts.inconsolata(color: Colors.white),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: Text(item["date"], style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 16)),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
