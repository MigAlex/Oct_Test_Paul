import 'dart:ui' as prefix0;

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class HomeGesture extends StatelessWidget {
  final String title;
  HomeGesture({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // final snackBar = SnackBar(
        //   content: Text('Hello Gestures'),
        // );
        // Scaffold.of(context).showSnackBar(snackBar);
        myFlushbar(context);
      },
      child: Container(
        padding: EdgeInsets.all(42),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(75.5),
        ),
        child: Text('push the button'),
      ),
    );
  }

  void myFlushbar(BuildContext context){
    Flushbar(
      duration: Duration(seconds: 3),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
        colors: [Colors.pink.shade800, Colors.pinkAccent.shade700, Colors.blue[300]],
        stops: [0.0, 0.85, 0.95],
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(4, 3),
          blurRadius: 6,
        ),
      ],
      dismissDirection: FlushbarDismissDirection.VERTICAL,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      title: 'Flushbar testing',
      message: 'Some random strings',
    )..show(context);
  }
}
