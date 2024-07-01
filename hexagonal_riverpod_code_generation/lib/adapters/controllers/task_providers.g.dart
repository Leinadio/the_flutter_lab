// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskRepositoryHash() => r'07b4d1d8e043937f963e52f66b966b9aaa3cebc5';

/// See also [taskRepository].
@ProviderFor(taskRepository)
final taskRepositoryProvider = AutoDisposeProvider<TaskRepository>.internal(
  taskRepository,
  name: r'taskRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskRepositoryRef = AutoDisposeProviderRef<TaskRepository>;
String _$addTaskHash() => r'646c6be34d3ac4d0405a3380ef885177e4179c8c';

/// See also [addTask].
@ProviderFor(addTask)
final addTaskProvider = AutoDisposeProvider<AddTask>.internal(
  addTask,
  name: r'addTaskProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addTaskHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddTaskRef = AutoDisposeProviderRef<AddTask>;
String _$getTasksHash() => r'8cf521db2ba5373bbe4b81ab5f05cc549c2a39c9';

/// See also [getTasks].
@ProviderFor(getTasks)
final getTasksProvider = AutoDisposeProvider<GetTasks>.internal(
  getTasks,
  name: r'getTasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTasksRef = AutoDisposeProviderRef<GetTasks>;
String _$removeTaskHash() => r'6d6088d55eac38b0e7b7233e548bcfb542ea2f74';

/// See also [removeTask].
@ProviderFor(removeTask)
final removeTaskProvider = AutoDisposeProvider<RemoveTask>.internal(
  removeTask,
  name: r'removeTaskProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$removeTaskHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoveTaskRef = AutoDisposeProviderRef<RemoveTask>;
String _$taskNotifierHash() => r'4cccd88e36d3f404a2e91f94f51a9f587989666e';

/// See also [TaskNotifier].
@ProviderFor(TaskNotifier)
final taskNotifierProvider =
    AutoDisposeNotifierProvider<TaskNotifier, List<Task>>.internal(
  TaskNotifier.new,
  name: r'taskNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$taskNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TaskNotifier = AutoDisposeNotifier<List<Task>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
