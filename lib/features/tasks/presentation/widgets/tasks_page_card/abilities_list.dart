import 'package:flutter/material.dart';

import '../../../../../core/constants/app_paddings.dart';

class AbilitiesList extends StatelessWidget {
  const AbilitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.topMd,

      child: Wrap(
        children: [
          // Placeholder for abilities chips
          Chip(label: Text('Flutter')),
          SizedBox(width: 8),
          Chip(label: Text('Dart')),
          SizedBox(width: 8),
          Chip(label: Text('UI Design')),
        ],
      ),
    );
  }
}
