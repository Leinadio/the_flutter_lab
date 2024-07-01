import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/entities/task.dart';
import '../../core/repositories/task_repository.dart';
import '../../core/usecases/add_task.dart';
import '../../core/usecases/get_tasks.dart';
import '../../core/usecases/remove_task.dart';
import '../repositories/task_repository_impl.dart';

part 'task_providers.g.dart';

@riverpod
TaskRepository taskRepository(TaskRepositoryRef ref) {
  return TaskRepositoryImpl();
}

@riverpod
AddTask addTask(AddTaskRef ref) {
  return AddTask(ref.read(taskRepositoryProvider));
}

@riverpod
GetTasks getTasks(GetTasksRef ref) {
  return GetTasks(ref.read(taskRepositoryProvider));
}

@riverpod
RemoveTask removeTask(RemoveTaskRef ref) {
  return RemoveTask(ref.read(taskRepositoryProvider));
}

@riverpod
class TaskNotifier extends _$TaskNotifier {
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
