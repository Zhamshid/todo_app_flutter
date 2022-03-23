import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/models/task.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: AppColors.bottomSheetVisibleColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: AppColors.defaultWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: AppConstants.kBottomSheetHeaderTextStyle,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: AppConstants.kSubHeaderTextStyle,
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.defaultLightBlueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
