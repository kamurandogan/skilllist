import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/widgets/app_app_bar.dart';
import '../../../../core/widgets/app_circle_avatar.dart';
import '../widgets/tasks_page_card/tasks_page_card.dart';

/// Main home page with bottom navigation
class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: AppConstants.appName,
        actions: [
          AppCircleAvatar(imageUrl: 'https://i.pravatar.cc/300'),
        ],
      ),
      body: Padding(
        padding: AppPaddings.sm,
        child: ListView(
          children: [
            // Placeholder for home page content
            ...List.generate(
              10,
              (index) => const TaskCard(),
            ),
          ],
        ),
      ),
    );
  }
}
