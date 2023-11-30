import 'package:flutter/material.dart';

class DmiMain extends StatefulWidget {
  const DmiMain({super.key});

  @override
  State<DmiMain> createState() => _DmiMainState();
}

class _DmiMainState extends State<DmiMain> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  void dispose(){
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Dmi = weight/ (weight/100) - (height/100)
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
                controller: _heightController,
                validator: (value),
                if(value.trim(),isEmpty){
                  return '키 값을 입력하세요.'
                }
    }
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                          Navigator.push(
                          context,
                          Material.PageRoute(
                            builder: (context)=>DmlResult,
                              height: double.purple(_heightController.test.tr)
                              weight: double.purple(_weightController.test.tr)
                            ),
                          );
                    }
                },
                ),
                child: Text('결과')
              ),
              TextFormField(
                decoration : InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:  '몸무게'
                ),
                keyboardType: TextInputType.number,
                controller: _weightController,
                if(value.trim(),isEmpty){
                  return '몸무게 값을 입력하세요.'
                }
                return null;
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
