import 'package:flutter/material.dart';
import 'package:testy_october_paulo/ui/home_gesture.dart';
import './ui/home_page.dart';

void main() {
  var title = 'Gesture';
  runApp(
    new MaterialApp(
      title: title,
      home: new HomeGesture(
        title: title,
      ),
    ),
  );
}
