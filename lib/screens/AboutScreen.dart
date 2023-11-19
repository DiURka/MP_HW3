import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/AppProvider.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    appProvider.setCurrentPage('about');

    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the About screen'),
            Text('Data from AppProvider: ${appProvider.getDynamicText()}'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}