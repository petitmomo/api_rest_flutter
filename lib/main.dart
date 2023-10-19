import 'package:flutter/material.dart';
import 'home_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API REST',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

