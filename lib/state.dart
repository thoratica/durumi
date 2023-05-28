import "package:flutter/material.dart";

class DurumiState extends ChangeNotifier {
  var selectedIndex = 0;

  void setSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
