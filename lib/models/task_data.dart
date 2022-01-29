import 'package:flutter/material.dart';
import 'package:task_manager1/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Eggs'),
  ];
  int get taskCount {
    return tasks.length;
  }
}
