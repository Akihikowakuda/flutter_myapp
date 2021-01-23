import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuButton = Row(
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white70,
          onPressed: () {
            // TODO
          },
        ),
      ],
    );

    final timer = Center(
      child: Text(
        '00:00',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 80,
          color: Colors.white70,
        ),
      ),
    );

    final startButton = Center(
      child: IconButton(
        icon: Icon(Icons.not_started_outlined),
        color: Colors.white70,
        iconSize: 90,
        onPressed: () {
          // TODO
        },
      ),
    );

    final timerColor = Container(
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
    );

    return Scaffold(
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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: menuButton,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: timer,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: startButton,
            ),
          ],
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
