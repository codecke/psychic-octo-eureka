import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo/data/repository.dart';

import '../data/models/todo.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final Repository? repository;

  TodosCubit({required this.repository}) : super(TodosInitial());

  void fetchTodos() {
    Timer(const Duration(seconds: 3), () {
      repository!.fetchTodos().then((todos) => {
            emit(
              TodosLoaded(todos: todos),
            ),
          });
    });
  }
}
