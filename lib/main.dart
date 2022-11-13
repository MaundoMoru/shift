import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shift/login.dart';
import 'package:shift/menu.dart';
import 'package:shift/models/User.dart';
import 'package:shift/theme_provider.dart';
import 'dart:convert';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<String> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userstring = prefs.getString('user') ?? '';
    return userstring;
  }

  @override
  void initState() {
    saveUserInfo();
    super.initState();
  }

  void saveUserInfo() async {
    final User user = User(
        id: '1',
        image: 'images/user 1.jpg', 
        name: 'Josef Kamande',
        bio: 'Flutter developer');

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', jsonEncode(user));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, theme, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: theme.currentTheme,
        home: FutureBuilder(
          future: loadUserData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                return const LoginScreen();
              } else {
                return const LoginScreen();
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ),
      );
    });
  }
}
