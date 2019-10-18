import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Item 1",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            "Item 2",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 12),
          ),
          const Expanded(
            child: const Text("Item 3"),
          )
        ],
      ),
    );
  }
}
