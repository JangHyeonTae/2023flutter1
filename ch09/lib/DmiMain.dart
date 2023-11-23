import 'package:flutter/material.dart';

class DmiMain extends StatefulWidget {
  const DmiMain({super.key});

  @override
  State<DmiMain> createState() => _DmiMainState();
}

class _DmiMainState extends State<DmiMain> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('바만도 계산기'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration : InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:  '키'
                ),
              ),
              TextFormField(
                decoration : InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:  '몸무게'
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){

                    }
                },
                ),
                child: Text('결과')
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('결과'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
