import 'dart:ui';

import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class ContentBackgroundCard extends StatelessWidget {
  final Widget child;
  const ContentBackgroundCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 14,
        sigmaY: 14,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.monoColor1,
          border: Border.all(
            color: AppColors.monoColor2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 50,
          ),
          child: child,
        ),
      ),
    );
  }
}
