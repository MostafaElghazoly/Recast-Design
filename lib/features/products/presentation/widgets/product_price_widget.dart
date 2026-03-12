import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class ProductPriceWidget extends StatelessWidget {
  final ProductModel model;
  const ProductPriceWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: Container(
          height: 27.sp,
          width: 27.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.4),
            border: Border.all(color: AppColors.black.withOpacity(0.3), width: 1.sp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextThemes.style6500.copyWith(color: AppColors.white),
              ),
              Text(
                LangKeys.currency,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextThemes.style6500.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
