
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String noom;
  const SecondScreen({super.key, required this.noom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen $noom'),),
    );
  }
}
