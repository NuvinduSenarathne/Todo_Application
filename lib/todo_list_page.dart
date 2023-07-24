import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateTodoAddPage,
        label: const Text('Add Todo'),
      ),
    );
  }

  void navigateTodoAddPage() {
    final route = MaterialPageRoute(builder: (context) => TodoAddPage());
    Navigator.push(context, route);
  }
}
