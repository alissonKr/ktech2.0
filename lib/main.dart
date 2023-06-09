import 'package:flutter/material.dart';
import 'package:ktech_app/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kavinsky Tech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(title: 'Kavinsky Tech'),
    );
  }
}
