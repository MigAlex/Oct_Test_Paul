import 'package:flutter/material.dart';
import './ui/home_gesture.dart';


void main() {
  var title = 'Gesture';
  runApp(
    new MaterialApp(
      title: title,
      home: new HomeGesture(title: title),
    ),
  );
}
