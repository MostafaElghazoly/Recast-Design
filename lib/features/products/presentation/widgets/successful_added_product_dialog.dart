import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';

import '../../../../common/navigation/navigation.dart';
import '../../../../common/navigation/routes.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';
import '../../../../common/widgets/gradient_text.dart';
import '../../../../common/widgets/rounded_button.dart';

class SuccessfulAddedProductDialog extends StatelessWidget {
  const SuccessfulAddedProductDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.black.withOpacity(0.8),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12.sp), borderSide: BorderSide.none),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientText(
              title: LangKeys.successAddedOrder,
              maxLines: 2,
              textAlign: TextAlign.center,
              textStyle: TextThemes.style14700,
            ),
            SizedBox(height: 8.sp),
            RoundedButton(
              onTap: () => Navigation().navigateAndRemoveUntil(routeName: AppRoutes.homeScreen),
              title: LangKeys.goHome,
            ),
          ],
        ),
      ),
    );
  }
}
