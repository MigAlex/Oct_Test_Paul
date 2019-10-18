import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'First item',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Second item',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue),
          ),
          Container(
            color: Colors.deepOrange.shade50,
            alignment: Alignment.bottomLeft,
            child: Text(
            'Second item B',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.blue[300]),
          ),
          )
        ],
      ),

      // child: new Text(
      //   "Hello container",
      //   textDirection: TextDirection.ltr,
      //   style: new TextStyle(
      //     color: Colors.white,
      //     fontWeight: FontWeight.w700,
      //     ),
      //   ),
    );
  }
}
