import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String titleText;
  CustomAppBar({
    super.key,
    required this.titleText,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget? get title => Text(
        titleText,
        style: titleTextStyle,
      );
}
