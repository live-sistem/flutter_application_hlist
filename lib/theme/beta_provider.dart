import 'package:flutter/material.dart';

class BetaProvider with ChangeNotifier {
  // ignore: non_constant_identifier_names
  bool _checked_Grid = false;
  // ignore: non_constant_identifier_names
  bool get checked_Grid => _checked_Grid == false;
  // BetaProvider(bool isPageNotes) {
  //   if (isPageNotes) {
  //     _checked_Grid = true;
  //   } else {
  //     _checked_Grid = false;
  //   }
  // }
  // ignore: non_constant_identifier_names
  void toggle_checked_Grid() async {
    _checked_Grid = !_checked_Grid;
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // if (_checked_Grid == false) {
    //   _checked_Grid = true;
    //   sharedPreferences.setBool("ListGrid", true);
    // } else {
    //   _checked_Grid = false;
    //   sharedPreferences.setBool("ListGrid", false);
    // }
    notifyListeners();
  }
}
