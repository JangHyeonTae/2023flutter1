import 'package:flutter/material.dart';

class Soccer extends StatefulWidget {
  const Soccer({super.key});

  @override
  State<Soccer> createState() => _SoccerState();
}

class _SoccerState extends State<Soccer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('soccer'),
      ),
    );
  }
}
