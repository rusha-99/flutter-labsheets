import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<Todo> _todoList = [];
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _todoController,
          decoration: InputDecoration(
            labelText: 'Enter a new task',
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          child: Text('Add'),
          onPressed: () {
            setState(() {
              _todoList.add(Todo(_todoController.text));
              _todoController.clear();
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _todoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  _todoList[index].title,
                  style: _todoList[index].completed
                      ? TextStyle(decoration: TextDecoration.lineThrough)
                      : null,
                ),
                leading: Checkbox(
                  value: _todoList[index].completed,
                  onChanged: (bool? value) {
                    setState(() {
                      _todoList[index].completed = value!;
                    });
                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _todoList.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          child: Text('Clear All'),
          onPressed: () {
            setState(() {
              _todoList.clear();
            });
          },
        ),
        SizedBox(height: 10)
      ],
    );
  }
}

class Todo {
  String title;
  bool completed;

  Todo(this.title, {this.completed = false});
}
