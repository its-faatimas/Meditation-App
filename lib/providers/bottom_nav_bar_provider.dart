import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;

  void onPressed(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get index => _currentIndex;
}
