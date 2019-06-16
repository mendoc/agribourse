import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> execute(String url, params) async {
  var response = http.post(url, body: params);
  //print('Response status for $url : ${response.statusCode}');
  return response;
}

void showMessage(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Fermer",
              style: TextStyle(
                  fontFamily: "Raleway",
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      );
    },
  );
}
