import 'package:flutter/material.dart';

class BoutonRetour extends StatelessWidget {
  final color;

  const BoutonRetour({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.arrow_back,
          color: this.color,
        ),
      ),
    );
  }
}
