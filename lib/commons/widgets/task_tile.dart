import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallback;
  final void Function()? onLongPress;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(taskTitle!,
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
