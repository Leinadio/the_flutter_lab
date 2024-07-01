// adapters/controllers/task_controller.dart
import 'package:flutter/material.dart';
import '../../core/entities/task.dart';
import '../../core/usecases/add_task.dart';
import '../../core/usecases/get_tasks.dart';
import '../../core/usecases/remove_task.dart';

class TaskController extends ChangeNotifier {
  final AddTask addTaskUseCase;
  final GetTasks getTasksUseCase;
  final RemoveTask removeTaskUseCase;

  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  TaskController(this.addTaskUseCase, this.getTasksUseCase, this.removeTaskUseCase);

  void addTask(Task task) {
    addTaskUseCase.execute(task);
    _tasks = getTasksUseCase.execute();
    notifyListeners();
  }

  void removeTask(String id) {
    removeTaskUseCase.execute(id);
    _tasks = getTasksUseCase.execute();
    notifyListeners();
  }

  void loadTasks() {
    _tasks = getTasksUseCase.execute();
    notifyListeners();
  }
}
