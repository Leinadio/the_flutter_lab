import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/entities/task.dart';
import '../../adapters/controllers/task_providers.dart';

class TaskScreen extends ConsumerWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskNotifierProvider);

    Widget displayContent() {
      if (tasks.isEmpty) {
        return const Center(child: Text('No tasks available'));
      }
      return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task.title),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => ref.read(taskNotifierProvider.notifier).removeTaskById(task.id),
            ),
          );
        },
      );
    }

    void addNewTask() {
      final task = Task(id: DateTime.now().toString(), title: 'New Task');
      ref.read(taskNotifierProvider.notifier).addNewTask(task);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: Column(
        children: [
          Expanded(child: displayContent()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                addNewTask();
              },
              child: const Text('Add Task'),
            ),
          ),
        ],
      ),
    );
  }
}
