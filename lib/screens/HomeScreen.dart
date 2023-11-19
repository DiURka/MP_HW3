import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width <= 320 ? 100.0 : 150.0;

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Welcome to the Home Screen', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile', arguments: {'userId': '123'});
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(buttonWidth, 40)),
                  child: Text('Go to Profile'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(buttonWidth, 40)),
                  child: Text('Go to Settings'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/notifications');
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(buttonWidth, 40)),
                  child: Text('Go to Notifications'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(buttonWidth, 40)),
                  child: Text('Go to About'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
