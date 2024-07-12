import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/view/ui/Quiz_screen.dart';
import 'package:flutter_quiz_app/view/ui/Splash_screen.dart';
import 'package:flutter_quiz_app/view/ui/login_screen.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
