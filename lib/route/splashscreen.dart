import 'package:agribourse/route/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Center(
              child: Hero(
                tag: "logo",
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Image.asset(
                    "assets/img/logo_ab.png",
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "© 2019 ecole 241",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 12.0,
                    color: Color.fromRGBO(200, 88, 0, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }
}
