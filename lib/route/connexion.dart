import 'dart:convert';

import 'package:agribourse/route/home.dart';
import 'package:agribourse/route/inscription.dart';
import 'package:agribourse/route/recuperation.dart';
import 'package:flutter/material.dart';

import 'package:agribourse/util/master.dart';
import 'package:agribourse/config/endpoints.dart';

class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  bool checked = false;
  bool processing = false;
  String email, pass;

  final _formKey = GlobalKey<FormState>();

  void toggleCheck() {
    setState(() {
      checked = !checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 50.0, right: 15.0, left: 15.0, top: 60.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/img/logo_ab.png",
                      width: 250.0,
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Connexion",
                        style: TextStyle(fontFamily: "Raleway", fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Veuillez saisir votre adresse email';
                          }
                          email = value;
                          return null;
                        },
                        style: TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          labelText: "Email *",
                          hintText: "Entrez votre adresse mail",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Veuillez saisir votre mot de passe';
                          }
                          pass = value;
                          return null;
                        },
                        obscureText: true,
                        textInputAction: TextInputAction.go,
                        style: TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Mot de passe *",
                          hintText: "Renseignez votre mot de passe",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: toggleCheck,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Checkbox(
                                activeColor: Colors.green[800],
                                value: checked,
                                onChanged: (e) {
                                  toggleCheck();
                                }),
                            Flexible(
                              child: Text(
                                "Se souvenir de moi",
                                style: TextStyle(
                                  fontFamily: "Raleway",
                                  fontSize: 16.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    (!processing)
                        ? MaterialButton(
                            height: 45.0,
                            color: Colors.green[800],
                            minWidth: double.infinity,
                            child: Text(
                              "SE CONNECTER",
                              style: TextStyle(
                                  fontFamily: "Raleway",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                setState(() {
                                  processing = !processing;
                                });
                                connexion(email, pass);
                              }
                            },
                          )
                        : CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green[800]),
                          ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Recuperation()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                              color: Color.fromRGBO(200, 88, 0, 1),
                              fontFamily: "Raleway",
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Inscription()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Pas de compte ? Inscrivez-vous.",
                          style: TextStyle(
                              color: Color(0xFFC55A11),
                              fontFamily: "Raleway",
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void connexion(String email, String pass) {
    execute(CONNEXION_URL, {"email": email, "pass": pass}).timeout(
      Duration(seconds: 5),
      onTimeout: () {
        showMessage(context,
            "Pas de réponse. Vérifiez votre connexion internet et réessayez s'il vous plaît.");
        setState(
          () {
            processing = !processing;
          },
        );
      },
    ).then((res) {
      print("Résultat de la requête : $res");
      Map<String, dynamic> response = json.decode(res.body);
      if (response != null) {
        if (response["erreur"]) {
          showMessage(context, response["message"]);
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      } else {
        showMessage(context, "Erreur inconnue");
      }
      setState(() {
        processing = !processing;
      });
    }, onError: (e) {
      print(e.toString());
      showMessage(
          context, "Une erreur s'est produite. Veuillez réessayer plus tard.");
      setState(() {
        processing = !processing;
      });
    });
  }
}
