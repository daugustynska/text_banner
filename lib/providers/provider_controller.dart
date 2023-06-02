import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String text = 'Hello!';
  String font = 'RobotoSlab';
  double fontSize = 100;
  Color color = Colors.white;
  Color backgroundColor = Colors.black;

  void changeText(String newText) {
    text = newText;
    notifyListeners();
  }

  void switchFont(String newFont) {
    font = newFont;
    notifyListeners();
  }

  void switchFontSize(double newFontSize) {
    fontSize = newFontSize;
    notifyListeners();
  }

  void switchColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }

  void switchBackgroundColor(Color newBackgroundColor) {
    backgroundColor = newBackgroundColor;
    notifyListeners();
  }
}
