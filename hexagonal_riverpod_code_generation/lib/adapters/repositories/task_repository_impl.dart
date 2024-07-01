import '../../core/entities/task.dart';
import '../../core/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final List<Task> _tasks = [];

  @override
  void addTask(Task task) {
    _tasks.add(task);
  }

  @override
  List<Task> getTasks() {
    return List.unmodifiable(_tasks);
  }

  @override
  void removeTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
  }
}
