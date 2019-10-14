import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:party_mixer/loading_screen.dart';

class MethodSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).padding.top + 60.0,
            left: 0.0,
            right: 0.0,
            child: Text(
              "What do you want?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 100.0,
            left: 70.0,
            right: 70.0,
            child: Column(children: <Widget>[
                SizedBox(height: 60.0),
                getSignInButton("Mix a song", context,
                CupertinoPageRoute(builder: (context) => LoadingScreen())),
                SizedBox(height: 20.0,),
                getSignInButton("Add a song to library", context,
                CupertinoPageRoute(builder: (context) => LoadingScreen())),
                SizedBox(height: 20.0,),
                getSignInButton("Go to my songs", context,
                CupertinoPageRoute(builder: (context) => LoadingScreen())),
                ],)
            
          ),
        ],
      ),
    );
  }
}
