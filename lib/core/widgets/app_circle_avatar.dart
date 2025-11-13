import 'package:flutter/material.dart';

import '../constants/app_dimensions.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({required this.imageUrl, this.scale = AppDimensions.avatarMedium, super.key});

  final String imageUrl;
  final double scale;

  @override
  Widget build(BuildContext ontext) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl, scale: scale),
    );
  }
}
