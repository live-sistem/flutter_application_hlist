import 'package:flutter/material.dart';
import 'package:hlist/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  // ignore: non_constant_identifier_names
  bool _checked_Grid = false;
  // ignore: non_constant_identifier_names
  bool get checked_Grid => _checked_Grid == false;

  //создаем объект класса ThemeData
  ThemeData _themeData = lightMode;
  //получаем объект класса ThemeData со значением lightMode
  ThemeData get themeData => _themeData;
  //делаем проверку для CupertinoSwitch value
  bool get isDarkMode => _themeData == darkMode;

  //отслеживание темы приложения при запуске, пренимает аргумент isDark булевое значение
  //--- doc пояснение в документе
  ThemeProvider(bool isDark) {
    if (isDark) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
  }
  // функция toggleTheme для изменения ThemeData(темы приложения)
  void toggleTheme() async {
    //создание данных из предпочней
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //--- doc пояснение в документе
    if (_themeData == lightMode) {
      _themeData = darkMode;
      sharedPreferences.setBool("darkMode", true);
    } else {
      _themeData = lightMode;
      sharedPreferences.setBool("darkMode", false);
    }
    notifyListeners();
  }

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
