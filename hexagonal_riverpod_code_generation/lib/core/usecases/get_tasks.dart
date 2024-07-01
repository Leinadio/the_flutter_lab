import '../repositories/task_repository.dart';
import '../entities/task.dart';

class GetTasks {
  final TaskRepository repository;

  GetTasks(this.repository);

  List<Task> execute() {
    return repository.getTasks();
  }
}
