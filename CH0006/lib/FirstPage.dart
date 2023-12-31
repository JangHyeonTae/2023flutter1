import 'package:ch0006/Person.dart';
import 'package:ch0006/SecondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FistPage ({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _State extends State<FirstPage> {
  String resultStr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [Text(resultStr),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              child: Text('다음페이지로 이동'),
          onPressed: (){
            final person = Person('홍길동)',10);
            final result = await Navigator.pushNamed(
              context,
              '/second');
              MaterialPageRoute(builder: (context)=>SecondPage(person: person)),
         );
            setState((){
              resultStr = result.name;
            }
            )
        });
        ),
      ],
    );
  }
}
