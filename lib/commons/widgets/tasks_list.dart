import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/widgets/task_tile.dart';
import 'package:todo_app_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList(this.tasks, {Key? key}) : super(key: key);

  final List<Task>? tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks![index].name,
          isChecked: widget.tasks![index].isDone,
          checkboxCallback: (newValue) {
            setState(() {
              widget.tasks![index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks!.length,
    );
  }
}
