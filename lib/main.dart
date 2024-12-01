import 'package:flutter/material.dart';

import 'screens/HomeScreen.dart';
import 'screens/ProductsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab1App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/product": (context) => const Products(),
      },
    );
  }
}
