import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          '홈페이지 2',
          style: TextStyle(fontSize: 40),
        )
    );
  }
}
