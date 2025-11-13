import 'package:flutter/material.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/widgets/app_circle_avatar.dart';
import 'bookmark_button.dart';
import 'task_title.dart';
import 'user_name_title.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});
  String get circleAvatarUrl =>
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get userName => 'Jane Doe';
  String get taskTitle => 'Flutter UI tasarımı yapılacak';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: AppPaddings.card,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppCircleAvatar(imageUrl: circleAvatarUrl, scale: AppDimensions.avatarSmall),
                const SizedBox(width: AppDimensions.spaceMd),
                UserNameTitle(userName: userName),
                const Spacer(),
                const BookmarkButton(),
              ],
            ),
            const SizedBox(height: AppDimensions.spaceMd),
            TaskTitle(taskTitle: taskTitle),
          ],
        ),
      ),
    );
  }
}
