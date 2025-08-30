import 'package:chatify_app_provider/pages/login_page.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App With Provider and Firebase',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
        primary: Color.fromRGBO(42, 117, 188, 1),
        secondary: Color.fromRGBO(42, 117, 188, 1),
        background: Color.fromRGBO(28, 27, 27, 1),
      ),
      scaffoldBackgroundColor: Color.fromRGBO(28, 27, 27, 1),
      ),

      home: LoginPage(),
    );
  }
}
