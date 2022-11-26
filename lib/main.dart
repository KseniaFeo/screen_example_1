import 'package:flutter/material.dart';
import 'package:screen_example_1/screens/intro_page_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPageScreenWidget(),
    );
  }
}