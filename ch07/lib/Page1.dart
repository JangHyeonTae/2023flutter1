import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Column(
      children: [
        Icon(
          Icons.local_taxi,
        size = 40;
        Text('Texi'),
      Column(
          children: [
          Icon(
          Icons.local_taxi,
          size = 40;
          Text('Texi'),
      Column(
          children: [
          Icon(
          Icons.local_taxi,
          size = 40;
          Text('Texi'),
    Opacity(
    opacity: 0.0,
    child: Column(
          children: [
          Icon(
          Icons.local_taxi,
          size = 40;
          Text('택시'),
      ]
        ),
      ],
    )
    );
  }
}

Widget _buildTop(){
  return Text('Top');
 }

 Widget _buildMiddle(){
    return Text('Middle');
  }

  widget _buildBottom(){
  return Text('Bottom');
   }
