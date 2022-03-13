import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/commons/widgets/tasks_list.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';
import 'package:todo_app_flutter/screens/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  Widget buildBottomSheet(BuildContext context) => Container();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultLightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => const AddTaskScreen());
        },
        backgroundColor: AppColors.defaultLightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: AppColors.defaultWhite,
                  child: Icon(
                    Icons.list,
                    color: AppColors.defaultLightBlueAccent,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todo',
                  style: AppConstants.kHeaderTextStyle,
                ),
                Text(
                  '12 Tasks',
                  style: AppConstants.kSubHeaderTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: AppColors.defaultWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
