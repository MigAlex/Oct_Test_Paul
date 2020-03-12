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
            disabledColor: Colors.amber,
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
              highlightColor: Colors.blueGrey.shade200,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Sleepy button is pressed"),
        backgroundColor: Colors.amber.shade300,
        tooltip: 'Time for bed',
        child: Icon(Icons.airline_seat_individual_suite),
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
        backgroundColor: Colors.pinkAccent.shade400,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.deepPurple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
