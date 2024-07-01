// core/usecases/get_tasks.dart
import '../entities/task.dart';
import '../repositories/task_repository.dart';

class GetTasks {
  final TaskRepository repository;

  GetTasks(this.repository);

  List<Task> execute() {
    return repository.getTasks();
  }
}
