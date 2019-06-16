import 'package:flutter/material.dart';

class Texte extends StatelessWidget {

  final texte;
  final fontSize;

  const Texte(this.texte, {Key key, this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.texte,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontFamily: "Raleway",
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
          fontSize: (this.fontSize == null) ? 16.0 : this.fontSize),
    );
  }
}
