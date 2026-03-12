import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/presentation/widgets/successful_added_product_dialog.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class AddToOrderButton extends StatelessWidget {
  const AddToOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => SuccessfulAddedProductDialog(),
        barrierColor: AppColors.primary.withOpacity(0.4),
      ),
      child: Container(
        height: 45.sp,
        padding: EdgeInsetsDirectional.only(start: 14.w, end: 6.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.sp),
          border: Border.all(color: AppColors.white.withOpacity(0.3)),
          gradient: LinearGradient(colors: [AppColors.primary, AppColors.secondary]),
        ),
        child: Row(
          children: [
            Text(LangKeys.addToOrder, style: TextThemes.style10700),
            SizedBox(width: 6.sp),
            Container(
              height: 36.sp,
              width: 36.sp,
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.black.withOpacity(0.1)),
              ),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
