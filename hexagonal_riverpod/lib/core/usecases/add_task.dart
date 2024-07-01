// core/usecases/add_task.dart
import '../entities/task.dart';
import '../repositories/task_repository.dart';

class AddTask {
  final TaskRepository repository;

  AddTask(this.repository);

  void execute(Task task) {
    repository.addTask(task);
  }
}
