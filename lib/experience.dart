import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Experience", style: TextStyle(color: Colors.white, fontFamily: "Inconsolata")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text("Coming soon", style: TextStyle(fontSize: 27, color: Colors.white, fontFamily: "Inconsolata"))
          ],
        ),
      ),
    );
  }
}
