import 'package:flutter/material.dart';

class Champ extends StatefulWidget {
  @override
  _ChampState createState() => _ChampState();
}

class _ChampState extends State<Champ> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 50.0,
        child: TextField(
          style: TextStyle(fontSize: 13.0, fontFamily: "Montserrat"),
          decoration: InputDecoration(
            labelText: "",
            hintText: "",
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
      ),
    );
  }
}
