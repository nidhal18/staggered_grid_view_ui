import 'package:flutter/material.dart';
import 'package:staggered_grid_view_ui/staggered_grid_view_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Grid View',
      theme: ThemeData(
      
      ),
      home: const MyHomePage(),
    );
  }
}


