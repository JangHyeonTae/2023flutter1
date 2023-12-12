import 'package:flutter/material.dart';

class baseball extends StatefulWidget {
  const baseball({super.key});

  @override
  State<baseball> createState() => _baseballState();
}

class _baseballState extends State<baseball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('baseball'),
      ),
    );
  }
}
