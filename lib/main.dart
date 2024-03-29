import 'package:flutter/material.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/first_screen.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/simple_calculator.dart';
import 'package:sbbwu_session12_textfields_forms_navigation/screens/textfield_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}
