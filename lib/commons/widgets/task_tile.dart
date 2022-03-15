import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';


class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallback;

  const TaskTile({Key? key, required this.isChecked, this.taskTitle, this.checkboxCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          taskTitle!,
          style: AppConstants.kTaskTextStyle.copyWith(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
        activeColor: AppColors.defaultLightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}


