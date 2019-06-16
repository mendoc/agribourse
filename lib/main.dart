import 'package:agribourse/route/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AGRI-BOURSE',
      theme: ThemeData(primaryColor: Colors.green[800]),
      home: SplashScreen(),
    );
  }
}
