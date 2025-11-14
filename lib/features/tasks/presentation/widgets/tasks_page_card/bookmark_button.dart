import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.bookmark_add_outlined,
        color: theme.colorScheme.secondary,
      ),
    );
  }
}
