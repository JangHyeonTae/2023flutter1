import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _page = [
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        '복잡한 UI',
        style: TextStyle(
        fontSize:30,
        color: Colors.yellow,
        ),
      ),
        backgroundColor: Colors.purple,
        centerTitle: true,
    actions: [
      IconButton(
    onPressed: (){},
    icon: Icon(Icons.add),
    ),
    ],
      ),
      body: Center(
        child: Text(
          '$_index 페이지',
          style: TextStyle(fontSize:40),
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
         currentIndex: _index,
         items: [
           BottomNavigationBarItem(
         label: '홈'
         icon: Icon(Icons,home),
         )
         BottomNavigationBarItem(
         label: '이용서비스'
         icon: Icon(Icons,assessment),
         BottomNavigationBarItem(
         label: '내 정보'
         icon: Icon(Icons,Icons.account_circle),
    ]
    )
  }
}
