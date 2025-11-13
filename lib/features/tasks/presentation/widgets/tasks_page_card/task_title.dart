import 'package:flutter/material.dart';

import '../../../../../core/theme/app_theme.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({required this.taskTitle, super.key});
  final String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      taskTitle,
      style: AppTextStyles.titleMedium,
    );
  }
}
