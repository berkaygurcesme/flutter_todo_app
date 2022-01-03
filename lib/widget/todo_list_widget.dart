import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider/todos.dart';
import '/widget/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    print('provider.todos');
    print(provider.todos.length);

    return todos.isEmpty
        ? Center(
            child: Text(
              'No todos.',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = todos[index];

              return TodoWidget(todo: todo);
            });
  }
}
