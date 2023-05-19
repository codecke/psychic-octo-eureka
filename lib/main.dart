import 'package:flutter/material.dart';
import 'package:todo/presentation/router.dart';
import 'package:todo/presentation/screens/todo_screen.dart';

void main() {
  runApp(
    MyApp(
      router: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({
    super.key,
    required this.router,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}
