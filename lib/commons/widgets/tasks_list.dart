import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/widgets/task_tile.dart';
import 'package:todo_app_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: 'Meeting 8pm'),
    Task(name: 'Calisma'),
    Task(name: 'GYM'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkboxCallback: (newValue){
            setState(() {
              task[index].toggleDone();
            });
          },
        );
      },itemCount: task.length,
    );
  }
}
