// import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:party_mixer/method_selection.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(-1.0, 0.0),
                ).animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}

class LoadingScreen extends StatelessWidget {
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
            left: 40.0,
            right: 40.0,
            top: MediaQuery.of(context).padding.top,
            child: Text(
              "Welcome to PartyMixr!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 20.0,
            left: 0.0,
            right: 0.0,
            child: Text(
              "Create your own music here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 60.0,
            left: 0.0,
            right: 0.0,
            child: Text(
              'Login with...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 24.0),
            ),
          ),
          Positioned(
            left: 70.0,
            right: 70.0,
            top: MediaQuery.of(context).padding.top + 100.0,
            child: Column(
              children: <Widget>[
                getSignInButton(
                    "Spotify",
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MethodSelection())),
                SizedBox(
                  height: 20.0,
                ),
                getSignInButton(
                    "Amazon Music",
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MethodSelection())),
                SizedBox(
                  height: 20.0,
                ),
                getSignInButton(
                    "Apple Music",
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MethodSelection())),
                SizedBox(
                  height: 20.0,
                ),
                getSignInButton(
                    "Google Play Music",
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MethodSelection())),
                SizedBox(
                  height: 20.0,
                ),
                getSignInButton(
                    "Pandora",
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MethodSelection())),
              ],
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Text(
              "More Options >",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}

Widget getSignInButton(String name, BuildContext context, PageRoute route) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, route);
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.cyanAccent, Colors.purpleAccent]),
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
  );
}
