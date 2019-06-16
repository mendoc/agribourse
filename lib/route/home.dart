import 'package:agribourse/config/couleurs.dart';
import 'package:agribourse/widget/texte.dart';
import 'package:agribourse/widget/titre.dart';
import 'package:flutter/material.dart';
import 'package:agribourse/config/data.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 90.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFf5F5f5),
                      offset: new Offset(0, 15.0),
                      blurRadius: 15.0,
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.menu,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  TitreSection(
                    titre: "PERIODE",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: Text(
                      "Banane",
                      style: TextStyle(
                          color: marron,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/Dareich241/agridata/master/assets/img/prix-zone.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Texte(data[1]),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Colors.white,
                                width: 1.0,
                                style: BorderStyle.solid),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey[400],
                                offset: new Offset(0.0, 0.0),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: new BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: new Radius.circular(20.0),
                              bottomRight: new Radius.circular(20.0),
                            ),
                          ),
                          width: double.infinity,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.topRight,
                                  child: RotatedBox(
                                      quarterTurns: 2,
                                      child: Image.asset(
                                          "assets/img/corner.png"))),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 65.0,
                                        bottom: 16.0,
                                        left: 40.0,
                                        right: 16.0),
                                    child: Texte(
                                      data[0],
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 60.0),
                                    child: Image.network(
                                        "https://raw.githubusercontent.com/Dareich241/agridata/master/assets/img/Courbe.png"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0),
                        child: TitreSection(titre: "PRODUCTION"),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                                color: Colors.white,
                                width: 1.0,
                                style: BorderStyle.solid),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey[400],
                                offset: new Offset(0.0, 0.0),
                                blurRadius: 10.0,
                              )
                            ],
                            borderRadius: new BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: new Radius.circular(20.0),
                            ),
                          ),
                          width: double.infinity,
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 65.0,
                                        bottom: 16.0,
                                        left: 40.0,
                                        right: 16.0),
                                    child: Texte(
                                      data[0],
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Container(
                                    child: Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 90.0),
                                          child: Image.network(
                                              "https://raw.githubusercontent.com/nzebitome/agri-image/master/bourse/manoic.png"),
                                        ),
                                        Positioned(
                                          bottom: 0.0,
                                          child: Image.asset(
                                              "assets/img/corner.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45.0),
                        child: TitreSection(titre: "TENDANCE DES PRIX"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TitreSection(titre: "TOUS LES PRODUITS"),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, bottom: 16.0, left: 60.0, right: 16.0),
                        child: Texte(
                          data[0],
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: CarouselSlider(
                        items: [1, 2, 3, 4, 5].map((i) {
                          return new Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      child: Container(
                                          child: Image.network(
                                        img_produits[i - 1],
                                        height: 200,
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      child: Container(
                                        color: Color(0xACffce86),
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      child: Container(
                                        color: Color(0x3C000000),
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 90.0, left: 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            produits[i - 1],
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Raleway",
                                                color: Colors.white),
                                          ),
                                          Text(
                                            desc_produits[i - 1],
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Raleway",
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                        height: 200,
                        autoPlay: false),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: MaterialButton(
                        elevation: 5.0,
                        height: 50.0,
                        minWidth: double.infinity,
                        color: marron,
                        onPressed: () {},
                        child: Text(
                          "Tous les produits",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
