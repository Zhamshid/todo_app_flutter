import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      children: const <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
          style: AppConstants.kTaskTextStyle.copyWith(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: TaskCheckbox(isChecked,onChanged: (newValue){
        setState(() {
          isChecked = newValue!;
        });
      },),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?)? onChanged;

  const TaskCheckbox(this.checkBoxState, {Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColors.defaultLightBlueAccent,
      value: checkBoxState,
      onChanged: onChanged,
    );
  }
}
