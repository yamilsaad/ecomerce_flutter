import 'package:ecomerce_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E comerce',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
