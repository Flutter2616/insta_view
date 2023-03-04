import 'package:flutter/material.dart';
import 'package:insta_view/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Dashscreen(),
      routes: {
        '/':(context) => Homescreen(),
      },
    ),
  );
}
