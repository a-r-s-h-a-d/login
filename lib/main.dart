import 'package:flutter/material.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ScreenSplash(),
    );
  }
}
