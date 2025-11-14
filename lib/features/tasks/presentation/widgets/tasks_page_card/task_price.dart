import 'package:flutter/material.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/theme/app_text_styles.dart';

class TaskPrice extends StatelessWidget {
  const TaskPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.topMd,
      child: Text(
        r'$ 1500',
        style: AppTextStyles.headlineSmall.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
