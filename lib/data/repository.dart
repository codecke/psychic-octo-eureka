import 'package:todo/data/network_service.dart';

import 'models/todo.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});
  Future<List<Todo>> fetchTodos() async {
    final todosRaw = await networkService.fetchTodos();
    return todosRaw!.map((e) => Todo.fromJson(e)).toList();
  }
}
