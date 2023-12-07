import 'package:ch11/ToDo.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ({super.key});

  @override
  State<> createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    final _items = <ToDo>[];
    var _toDoController = TextEditingController();

    void dispose(){
      _toDoController.dispose();
      super.dispose();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("남은 할 일"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _toDoController,
                    ),
                ),
                ElevatedButton(
                    onPressed: () => _addTodo(ToDo(_toDoController.text)),
                    child: Text('추가'),
                ),
              ],
            ),
            Expanded(
              child:ListView(
                children: _items.map((todo) => _buildItemWidget(todo)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(DocumentSnapshot doc){
    final todo
    return ListTile(
      onTap: ()=> _toggleToDo(todo),
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: ()=> _deleteToDo(todo),
      ),
    );
  }

  void _addTodo(ToDo toDo){
    FirebaseFirestore.instance.collection('todo2')
      .add({'title': todo.title, 'isDone' : todo.isDone});
    _toDocontroller.text = '';
  }
  void _deleteToDo(ToDo todo){
    setState(() {
      _items.remove(todo);
    });
  }
  void _toggleToDo(ToDo todo){
    FirebaseFirestor.instance.collection('todo2').doc(doc.id).update(
      {'isDone'}
    )
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}

