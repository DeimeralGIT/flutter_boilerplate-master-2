import 'package:flutter/material.dart';

import 'app_colors.dart';

const TextStyle buttonTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 23,
);

const TextStyle titleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
  color: AppColors.brandColor3,
);

final ButtonStyle filledButton = FilledButton.styleFrom(
  backgroundColor: AppColors.brandColor1,
  foregroundColor: AppColors.monoColor1,
  fixedSize: const Size.fromHeight(60),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  ),
  textStyle: buttonTextStyle,
);

final ButtonStyle outlinedButton = OutlinedButton.styleFrom(
  fixedSize: const Size.fromHeight(60),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    side: BorderSide(color: AppColors.brandColor1),
  ),
  backgroundColor: AppColors.monoColor1,
  foregroundColor: AppColors.brandColor1,
  textStyle: buttonTextStyle,
);
