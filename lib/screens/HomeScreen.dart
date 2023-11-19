// screens/HomeScreen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = 70.0;

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Welcome to the Home Screen', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile', arguments: {'userId': '2110169'});
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(buttonWidth, 50),
                  ),
                  child: Text(
                    'Go to Profile',
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(buttonWidth, 50),
                  ),
                  child: Text(
                    'Go to Settings',
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/notifications');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(buttonWidth, 50),
                  ),
                  child: Text(
                    'Go to Notifications',
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(buttonWidth, 50),
                  ),
                  child: Text(
                    'Go to About',
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}