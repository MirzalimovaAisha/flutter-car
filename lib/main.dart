import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice3/intro.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context)=> const PageViewExample(),
      },
    );
  }
}
