import 'package:agribourse/widget/backbouton.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool checked = false;

  void toggleCheck() {
    setState(() {
      checked = !checked;
    });
  }

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
                  child: BoutonRetour(color: Color(0xFFC55A11)),
                ),
                Image.asset(
                  "assets/img/logo_ab.png",
                  width: 250.0,
                  height: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Création de compte",
                    style: TextStyle(fontFamily: "Raleway", fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    height: 50.0,
                    child: TextField(
                      style:
                          TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        labelText: "Nom *",
                        prefixIcon: Icon(Icons.person),
                        hintText: "Entrez votre nom complet",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 50.0,
                    child: TextField(
                      style:
                          TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Prénom",
                        hintText: "Entrez votre prénom",
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
                      style:
                          TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Email *",
                        hintText: "Entrez votre adresse mail",
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
                      style:
                          TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Mot de passe *",
                        hintText: "Choisissez un mot de passe",
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
                      style:
                          TextStyle(fontSize: 13.0, fontFamily: "Raleway"),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Confirmation *",
                        hintText: "Confirmez votre mot de passe",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
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
                        child: InkWell(
                          onTap: toggleCheck,
                          child: Text(
                            "Je souhaite recevoir de l'information, des tendaces et des mises à jour par e-mail.",
                            style: TextStyle(fontFamily: "Raleway"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  height: 45.0,
                  color: Colors.green[800],
                  minWidth: double.infinity,
                  child: Text(
                    "VALIDER",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Vous avez déjà un compte ? Connectez-vous.",
                              style: TextStyle(
                                  color: Color.fromRGBO(200, 88, 0, 1),
                                  fontFamily: "Raleway",
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
