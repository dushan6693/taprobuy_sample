import 'package:flutter/material.dart';
import 'package:taprobuy/color_schemes.g.dart';
import 'package:taprobuy/items/ItemCard.dart';
import 'package:taprobuy/screens/Home.dart';
import 'package:taprobuy/screens/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'taprobuy Demo',
      theme: ThemeData(primaryColor: k_primary, fontFamily: 'poppins'),
      home: const SignUp(),
    );
  }
}
