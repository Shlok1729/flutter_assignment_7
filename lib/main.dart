import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const PokeApp());
}

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poképedia',
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
