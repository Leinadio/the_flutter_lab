// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'adapters/controllers/task_controller.dart';
import 'adapters/repositories/task_repository_impl.dart';
import 'core/usecases/add_task.dart';
import 'core/usecases/get_tasks.dart';
import 'core/usecases/remove_task.dart';
import 'ui/screens/task_screen.dart';

void main() {
  final repository = TaskRepositoryImpl();

  runApp(MyApp(
    taskController: TaskController(
      AddTask(repository),
      GetTasks(repository),
      RemoveTask(repository),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final TaskController taskController;

  const MyApp({super.key, required this.taskController});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => taskController,
      child: MaterialApp(
        title: 'Flutter Hexagonal Architecture',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const TaskScreen(),
      ),
    );
  }
}
