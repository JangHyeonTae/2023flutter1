import 'package:flutter/material.dart';

class DmiResult extends StatefulWidget {
  final double height;
  final double weight;
  const DmiResult({Key? key,
    required this.height,
    required this.weight})
  const DmlResul({super.key, required this.height, required this.weight});

  @override
  State<DmiResult> createState() => _DmiResultState();
}

class _DmiResultState extends State<DmiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '정상',
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height:16),
            Icon(
              Icons.sentiment_satisfied,
              color: Colors.green,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
