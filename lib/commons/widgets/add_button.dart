import 'package:flutter/material.dart';
import 'package:todo_app_flutter/commons/constants/constants.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: AppColors.defaultLightBlueAccent,
      child: MaterialButton(
        onPressed: () {},
        minWidth: 300.0,
        height: 60,
        child: const Text(
          'Add',
          style: AppConstants.kSubHeaderTextStyle,
        ),
      ),
    );
  }
}
