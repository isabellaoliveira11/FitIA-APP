import 'package:flutter/material.dart';
import 'package:fitia_app/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitIA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        fontFamily: 'Roboto',
      ),
      home: const LoginScreen(), // fluxo começa no login
    );
  }
}
