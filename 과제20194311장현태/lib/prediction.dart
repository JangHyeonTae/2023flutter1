import 'package:flutter/material.dart';

class prediction extends StatefulWidget {
  const prediction({super.key});

  @override
  State<prediction> createState() => _predictionState();
}

class _predictionState extends State<prediction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('승부예측'),
      ),
    );
  }
}
