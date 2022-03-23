import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/widgets/task_tile.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task_data.dart';


class TasksList extends StatefulWidget {
    @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).task[index].name,
          isChecked: Provider.of<TaskData>(context).task[index].isDone,
          checkboxCallback: (newValue) {
            // setState(() {
            //   widget.tasks![index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).task.length,
    );
  }
}
