import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key, this.taskTitle, this.taskValue,
  }) : super(key: key);

  final String? taskTitle;
  final bool? taskValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$taskTitle'),
      trailing: Checkbox(
        value: false, onChanged: (bool? value) {
      },
      ),
    );
  }
}
