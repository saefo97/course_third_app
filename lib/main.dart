import 'package:course_third_app/components/custom_text_field.dart';
import 'package:course_third_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true
      ),
      home: WelcomeScreen(),
    );
  }
}
