import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier {
  String _currentPage = 'home';

  String get currentPage => _currentPage;

  void setCurrentPage(String page) {
    _currentPage = page;
    notifyListeners();
  }

  String getDynamicText() {
    switch (_currentPage) {
      case 'home':
        return 'Hello from Home Page!';
      case 'profile':
        return 'Welcome to the Profile Page!';
      case 'settings':
        return 'Settings are here!';
      case 'notifications':
        return 'You have new notifications!';
      case 'about':
        return 'About this app...';
      default:
        return 'Default Text';
    }
  }
}