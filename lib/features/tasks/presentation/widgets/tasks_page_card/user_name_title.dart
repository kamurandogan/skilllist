import 'package:flutter/material.dart';

import '../../../../../core/theme/app_theme.dart';

class UserNameTitle extends StatelessWidget {
  const UserNameTitle({required this.userName, super.key});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Text(
      userName,
      style: AppTextStyles.bodyMedium,
    );
  }
}
