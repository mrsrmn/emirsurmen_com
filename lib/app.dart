import 'package:flutter/material.dart';
import 'home.dart';
import 'work.dart';
import 'experience.dart';


// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MaterialColor kPrimaryColor = MaterialColor(
    0xffffff,
    const <int, Color>{
      50: const Color(0xffffff),
      100: const Color(0xffffff),
      200: const Color(0xffffff),
      300: const Color(0xffffff),
      400: const Color(0xffffff),
      500: const Color(0xffffff),
      600: const Color(0xffffff),
      700: const Color(0xffffff),
      800: const Color(0xffffff),
      900: const Color(0xffffff),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emir Sürmen',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => Home(),
        "/work": (context) => Work(),
        "/experience": (context) => Experience(),
      },
      initialRoute: "/",
    );
  }
}