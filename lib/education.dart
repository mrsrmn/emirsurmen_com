import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Education", style: GoogleFonts.inconsolata(color: Colors.white)),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context), tooltip: "Back"),
      ),
      body: Center(
          child: SingleChildScrollView(
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
                        side: BorderSide(color: Colors.red)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.school, color: Colors.white),
                          title: Text("ALEV Schools (Primary and Middle School)", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("2010 - 2018", style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 16)),
                              onPressed: () {},
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                        Divider(color: Colors.red),
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.school, color: Colors.white),
                          title: Text("TED Istanbul Koleji (High School)", style: GoogleFonts.inconsolata(color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text("2019 - 2023", style: GoogleFonts.inconsolata(color: Colors.white, fontSize: 16)),
                              onPressed: () {},
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
