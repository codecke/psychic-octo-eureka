import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/cubit/todos_cubit.dart';
import 'package:todo/presentation/screens/add_todo_screen.dart';

import '../../data/models/todo.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodosCubit>(context).fetchTodos();
    {}

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('To-do'),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddTodoScreen(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: BlocBuilder<TodosCubit, TodosState>(
        builder: (context, state) {
          if (state is! TodosLoaded) {
            return const Center(child: CircularProgressIndicator());
          }
          final todos = (state as TodosLoaded).todos;
          return SingleChildScrollView(
            child: Column(children: [
              todos.map((e) => _todo(e)).toList(),
            ]),
          );
        },
      ),
    );
  }

  Widget _todo(Todo todo, context) {
    return Dismissible(
      key: key!,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            )),
        child: Row(
          children: [
            Text(),
          ],
        ),
      ),
    );
  }
}
