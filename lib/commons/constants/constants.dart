import 'package:flutter/material.dart';
import 'package:todo_app_flutter/res/colors/app_colors.dart';

class AppConstants {
  static const kHeaderTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w700,
  );
  static const kSubHeaderTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
  );

  static const kBottomSheetHeaderTextStyle = TextStyle(
    color: AppColors.defaultLightBlueAccent,
    fontSize: 30,
  );

  static const kTaskTextStyle = TextStyle(
    color: Colors.black54,
    fontSize: 20,
  );
}
