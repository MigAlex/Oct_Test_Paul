import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void _onPress() {
    print("Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade700,
        title: Text('Any title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _onPress,
          ),
        ],
      ),
    );
  }
}
