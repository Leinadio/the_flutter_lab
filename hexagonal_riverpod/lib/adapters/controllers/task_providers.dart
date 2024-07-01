// adapters/controllers/task_providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/entities/task.dart';
import '../../core/repositories/task_repository.dart';
import '../../core/usecases/add_task.dart';
import '../../core/usecases/get_tasks.dart';
import '../../core/usecases/remove_task.dart';
import '../repositories/task_repository_impl.dart';

// Répository Provider
final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  return TaskRepositoryImpl();
});

// Define providers for TaskNotifier and dependencies
final addTaskProvider = Provider<AddTask>((ref) {
  return AddTask(ref.read(taskRepositoryProvider));
});

final getTasksProvider = Provider<GetTasks>((ref) {
  return GetTasks(ref.read(taskRepositoryProvider));
});

final removeTaskProvider = Provider<RemoveTask>((ref) {
  return RemoveTask(ref.read(taskRepositoryProvider));
});

class TaskNotifier extends Notifier<List<Task>> {
  late final AddTask _addTask;
  late final GetTasks _getTasks;
  late final RemoveTask _removeTask;

  @override
  List<Task> build() {
    _addTask = ref.read(addTaskProvider);
    _getTasks = ref.read(getTasksProvider);
    _removeTask = ref.read(removeTaskProvider);
    return _getTasks.execute();
  }

  void loadTasks() {
    final tasks = _getTasks.execute();
    state = List<Task>.from(tasks);
  }

  void addNewTask(Task task) {
    _addTask.execute(task);
    loadTasks();
  }

  void removeTaskById(String id) {
    _removeTask.execute(id);
    loadTasks();
  }
}

final taskNotifierProvider = NotifierProvider<TaskNotifier, List<Task>>(TaskNotifier.new);
