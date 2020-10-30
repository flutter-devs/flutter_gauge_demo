
import 'package:flutter/material.dart';
import 'package:flutter_guage_app/flutter_gauge_page.dart';
import 'package:flutter_guage_app/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
