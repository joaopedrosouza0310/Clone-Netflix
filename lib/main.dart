import 'package:flutter/material.dart';
import 'package:flutter_netflix/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.grey[600], //Color(0xFFE50914),
          backgroundColor: Colors.black87,
          accentColor: Color(0xFFE50914)),
      home: LoginScreen(),
    );
  }
}
