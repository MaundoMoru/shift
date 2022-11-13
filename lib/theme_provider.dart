import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeProvider themeProvider = ThemeProvider();

class ThemeProvider extends ChangeNotifier {
  bool isDarkTheme = false;

  ThemeData get currentTheme => isDarkTheme
      ? ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.black,
          brightness: Brightness.dark,
          backgroundColor: const Color(0xFF212121),
          accentColor: Colors.blue,
          accentIconTheme: const IconThemeData(color: Colors.blue),
          dividerColor: Colors.black38,
        )
      : ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.white,
          brightness: Brightness.light,
          backgroundColor: const Color(0xFFE5E5E5),
          // scaffoldBackgroundColor: Colors.grey[200],
          accentColor: Colors.blue,
          accentIconTheme: const IconThemeData(color: Colors.blue),
          // dividerColor: Colors.white70,
        );

  ThemeProvider() {
    loadTheme();
  }

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    saveTheme();
    notifyListeners();
  }

  void saveTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('themeMode', isDarkTheme);
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkTheme = prefs.getBool('themeMode') ?? false;
    notifyListeners();
  }
}
