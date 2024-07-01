import '../repositories/task_repository.dart';

class RemoveTask {
  final TaskRepository repository;

  RemoveTask(this.repository);

  void execute(String id) {
    repository.removeTask(id);
  }
}
