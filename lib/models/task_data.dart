import 'package:flutter/material.dart';
import 'package:todo_app_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> task = [
    Task(name: 'Meeting 8pm'),
    Task(name: 'Calisma'),
    Task(name: 'GYM'),
  ];

}