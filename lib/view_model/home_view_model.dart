import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  int? currentIndex = 0;

// to know your selected index
  bool toggel(int selectedIndex) {
    if (currentIndex == selectedIndex) {
      return true;
    } else {
      return false;
    }
  }

//chane state
  void changeState() {
    notifyListeners();
  }
}
