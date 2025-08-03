import 'package:flutter/material.dart';
import 'package:flutter_basics/core/configs/themes/App_theme.dart';
import 'package:flutter_basics/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.LightTheme,
      debugShowCheckedModeBanner: false,
      home: const Splash_Screen()
    );
  }
}

