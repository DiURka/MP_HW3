import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/AppProvider.dart';
import 'screens/HomeScreen.dart';
import 'screens/ProfileScreen.dart';
import 'screens/SettingsScreen.dart';
import 'screens/NotificationsScreen.dart';
import 'screens/AboutScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        title: 'Navigation and Routing Objective',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/profile': (context) => ProfileScreen(),
          '/settings': (context) => SettingsScreen(),
          '/notifications': (context) => NotificationsScreen(),
          '/about': (context) => AboutScreen(),
        },
      ),
    ),
  );
}