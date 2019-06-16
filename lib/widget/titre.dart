import 'package:agribourse/config/couleurs.dart';
import 'package:flutter/material.dart';

class TitreSection extends StatelessWidget {
  final titre;

  const TitreSection({Key key, @required this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: <Widget>[
        Container(
          height: 40.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: marron,
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[600],
                offset: new Offset(0.0, 0.0),
                blurRadius: 10.0,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            this.titre,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Raleway Bold"),
          ),
        ),
      ],
    );
  }
}
