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
      backgroundColor: Colors.purpleAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GoalKeeper",
              style: TextStyle(
                  fontSize: 21, fontWeight: FontWeight.w400, color: Colors.red),
            ),
            InkWell(
              child: Text('Thats a button'),
              onTap: () => null,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Hey'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text('Print it'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text('Record it'),
          ),
        ],
        onTap: (int i) => debugPrint("You've tapped $i button"),
      ),
    );
  }
}
