import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/cubit/todos_cubit.dart';
import 'package:todo/data/repository.dart';
import 'package:todo/presentation/screens/add_todo_screen.dart';
import 'package:todo/presentation/screens/edit_todo_Screen.dart';
import 'package:todo/presentation/screens/todo_screen.dart';

class AppRouter {
  Repository? repository;

  AppRouter() {
    repository = Repository();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => TodosCubit(),
            child: const TodoScreen(),
          ),
        );
      case "/EDIT_TODO_ROUTE":
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case "/ADD_TODO_ROUTE":
        return MaterialPageRoute(builder: (_) => AddTodoScreen());
      default:
        return null;
    }
  }
}
