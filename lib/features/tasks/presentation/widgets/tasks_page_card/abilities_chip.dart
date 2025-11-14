import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';

class AbilitiesChip extends StatelessWidget {
  const AbilitiesChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text('Abilities', style: AppTextStyles.caption),
      side: BorderSide.none,
    );
  }
}
