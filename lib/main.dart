import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetsApp(color: Color(0xFFFFFFFF), home: MainScreen());
  }
}
