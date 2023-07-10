import 'package:energytoday/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Energy Today',
      home:  HomePage()
    );
  }
}
