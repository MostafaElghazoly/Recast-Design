import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';
import '../styles/text_themes.dart';

class GradientText extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final int? maxLines;
  final TextAlign? textAlign;
  const GradientText({super.key, required this.title, this.textStyle,this.maxLines,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: (textStyle ?? TextThemes.style22700).copyWith(
        letterSpacing: -0.05,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
          ).createShader(Rect.fromLTWH(0, 0, 200.w, 70.h)),
      ),
    );
  }
}
