// ui/screens/task_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/entities/task.dart';
import '../../adapters/controllers/task_controller.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: Column(
        children: [
          Expanded(
            child: Consumer<TaskController>(
              builder: (context, controller, child) {
                return ListView.builder(
                  itemCount: controller.tasks.length,
                  itemBuilder: (context, index) {
                    final task = controller.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => controller.removeTask(task.id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                final task = Task(id: DateTime.now().toString(), title: 'New Task');
                context.read<TaskController>().addTask(task);
              },
              child: const Text('Add Task'),
            ),
          ),
        ],
      ),
    );
  }
}
