import '../repositories/task_repository.dart';
import '../entities/task.dart';

class AddTask {
  final TaskRepository repository;

  AddTask(this.repository);

  void execute(Task task) {
    repository.addTask(task);
  }
}
