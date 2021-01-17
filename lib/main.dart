import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
              const Color(0xFF00E5FF).withOpacity(0.8),
              const Color(0xFF2979FF).withOpacity(1.0),
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  '00:00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white70,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.not_started_outlined),
                color: Colors.white70,
                iconSize: 90,
                onPressed: () {
                  // TODO
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('settings'),
          ),
        ],
      ),
    );
  }
}
