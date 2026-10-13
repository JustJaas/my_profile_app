import 'package:flutter/material.dart';
import 'app_palette.dart';

class ThemeController extends ChangeNotifier {
  int _index = 0;

  Color get accent => AppPalette.palette[_index];

  void nextAccent() {
    _index = (_index + 1) % AppPalette.palette.length;
    notifyListeners();
  }
}
