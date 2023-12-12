import 'package:flutter/material.dart';

class basketball extends StatefulWidget {
  const basketball({super.key});

  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('basketball'),
      ),
    );
  }
}
