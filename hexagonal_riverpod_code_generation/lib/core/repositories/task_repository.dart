import '../entities/task.dart';

abstract class TaskRepository {
  void addTask(Task task);
  List<Task> getTasks();
  void removeTask(String id);
}
