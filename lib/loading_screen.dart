// import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: Center(
              child: Text("Welcome to PartyMixr!"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Create your own music here."),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            child: Text('Login with...'),
          ),
          SizedBox(
            height: 40.0,
          ),
          get_sign_in_button("Spotify"),
          SizedBox(
            height: 20.0,
          ),
          get_sign_in_button("Amazon Music"),
          SizedBox(
            height: 20.0,
          ),
          get_sign_in_button("Apple Music"),
          SizedBox(
            height: 20.0,
          ),
          get_sign_in_button("Google Play Music"),
          SizedBox(
            height: 20.0,
          ),
          get_sign_in_button("Pandora"),
        ],
      ),
    );
  }
}

Widget get_sign_in_button(String name) {
  return Padding(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.cyan, Colors.purpleAccent]),
      ),
      width: double.infinity,
      height: 40.0,
      child: Center(
        child: Text(
          name ?? "placeholder",
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 80.0),
  );
}
