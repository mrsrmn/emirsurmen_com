import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedName extends StatelessWidget {
  final String text;
  final String text2;

  const AnimatedName({required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 40.0,
              color: Colors.white
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            pause: Duration(seconds: 3),
            animatedTexts: [
              TypewriterAnimatedText(
                  text,
                  textStyle: GoogleFonts.inconsolata(
                      color: Colors.white
                  )
              ),
              TypewriterAnimatedText(
                  text2,
                  textStyle: GoogleFonts.inconsolata(
                      color: Colors.white
                  )
              ),
            ],
          ),
        ),
    );
  }
}