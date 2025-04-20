import 'package:flutter/material.dart';
import 'package:suraksha_sakey/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF5D9817), // AppBar color
        ),
        scaffoldBackgroundColor: Color(0xFFF0F3EB), // Background color
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
