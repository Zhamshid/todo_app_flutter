import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/models/task.dart';

String? newTaskTitle;

class TaskData extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: 'Meeting 8pm'),
    Task(name: 'Calisma'),
    Task(name: 'GYM'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String? newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _task.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
