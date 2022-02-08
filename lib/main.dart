import 'package:flutter/material.dart';
import 'package:flutter_projects/HomeScreen.dart';
import 'package:flutter_projects/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
            home: HomeScreen(),

    );
  }
}
