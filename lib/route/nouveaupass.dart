import 'package:flutter/material.dart';

class NouveauPass extends StatefulWidget {
  @override
  _NouveauPassState createState() => _NouveauPassState();
}

class _NouveauPassState extends State<NouveauPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 50.0, right: 15.0, left: 15.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(color: Color(0xFFC55A11)),
                ),
                Image.asset(
                  "assets/img/logo_ab.png",
                  width: 250.0,
                  height: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Nouveau mot de passe",
                    style: TextStyle(fontFamily: "Raleway", fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Veuillez redéfinir un nouveau mot de passe pour votre compte",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(200, 88, 0, 1),
                                fontFamily: "Raleway",
                                fontSize: 19.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 50.0,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Nouveau mot de passe *",
                        hintText: "Choisissez un nouveau mot de passe",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 50.0,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Confirmation *",
                        hintText: "Confirmez votre nouvau mot de passe",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: MaterialButton(
                    height: 45.0,
                    color: Colors.green[800],
                    minWidth: double.infinity,
                    child: Text(
                      "MODIFIER",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
