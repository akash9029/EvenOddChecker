import 'package:even_odd/EvenOdd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Even Odd Finder',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: EvenOdd(),
    );
  }
}
