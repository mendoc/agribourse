import 'package:agribourse/route/nouveaupass.dart';
import 'package:agribourse/widget/backbouton.dart';
import 'package:flutter/material.dart';

class Recuperation extends StatefulWidget {
  @override
  _RecuperationState createState() => _RecuperationState();
}

class _RecuperationState extends State<Recuperation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 50.0, right: 15.0, left: 15.0, top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: BoutonRetour(color: Color(0xFFC55A11)),
                ),
                Image.asset(
                  "assets/img/logo_ab.png",
                  width: 250.0,
                  height: 70.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
                  child: Text(
                    "Récupération de mot de passe",
                    style: TextStyle(fontFamily: "Raleway", fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Veuillez renseigner votre adresse mail ci-dessous afin de recevoir un mail de réinitialisation de mot passe.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(200, 88, 0, 1),
                              fontFamily: "Raleway",
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                  child: TextField(
                    style: TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Adresse email *",
                      hintText: "Entrez votre adresse mail",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
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
                      "ENVOYER LE MAIL",
                      style: TextStyle(
                          fontFamily: "Raleway",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NouveauPass()));
                    },
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
