import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager1/models/task_data.dart';
import 'package:task_manager1/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final tasks = taskData.tasks[index];
            return TaskTile(
              isChecked: tasks.isDone,
              taskTitle: tasks.name,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(tasks);
              },
              longPress: () {
                taskData.deleteTask(tasks);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
