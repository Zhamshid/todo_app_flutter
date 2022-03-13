import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/commons/widgets/add_button.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Expanded(
              child: Text(
                'Add Task',
                style: AppConstants.kBottomSheetHeaderTextStyle,
              ),
            ),
            AddButton(),
          ],
        ),
      ),
    );
  }
}

