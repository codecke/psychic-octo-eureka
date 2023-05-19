import 'package:flutter/material.dart';
import 'package:todo/presentation/router.dart';
import 'package:todo/constants/strings.dart';
import 'package:todo/presentation/screens/add_todo_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('To-do'),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTodoScreen(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: const Center(child: Text('Todo screen')),
    );
  }
}
