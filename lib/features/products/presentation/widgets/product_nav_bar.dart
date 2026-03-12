import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';
import '../../../../common/widgets/gradient_text.dart';
import 'add_to_order_button.dart';

class ProductNavBar extends StatelessWidget {
  final ProductModel model;
  const ProductNavBar({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientText(title: "${model.price} JD", textStyle: TextThemes.style10700),
                      Text(LangKeys.taxAndService, style: TextThemes.style10700.copyWith(color: AppColors.grey39)),
                    ],
                  ),
                ),
                SizedBox(width: 8.sp),
                AddToOrderButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
