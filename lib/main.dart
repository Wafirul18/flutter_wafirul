//import 'dart:html';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Noification")),
        body: Center(
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    showToast();
                  },
                  child: Text("Show Toast"),
                ),
                MaterialButton(
                  onPressed: () {
                    showAlert(context);
                  },
                  child: Text("Show Alert"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: "This is toast notofication",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER);
    });
  }

  //void showSnackBar() {
  //setState(() {
  //final snackbar = SnackBar(
  //  content: Text('Hey, This Is SnackBar'),
  //duration: Duration(seconds: 5),
  //action: SnackBarAction(
  //label: 'Undo',
  //onPressed: () {},
  //),
  //);
  //_ScaffoldKey.currentState.showSnackBar(snackbar);
  //});
  //}

  void showAlert(BuildContext context) {
    setState(() {
      Widget buttonOK = MaterialButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      Widget buttonCancel = MaterialButton(
        child: Text("CANCEL"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: Text("Simple Alert"),
        content: Text("Notification from Alert"),
        actions: [
          buttonOK,
          buttonCancel,
        ],
      );
      showDialog(
          context: context,
          builder: (BuildContext content) {
            return alert;
          });
    });
  }
}
