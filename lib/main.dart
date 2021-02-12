import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CP Booster',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
