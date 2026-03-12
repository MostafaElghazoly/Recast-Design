import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class TrendingWidget extends StatelessWidget {
  final ProductModel model;
  const TrendingWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: model.isTrend,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: Container(
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12.sp),
            border: Border.all(color: AppColors.white.withOpacity(0.4), width: 1.sp),
          ),
          child: Text(
            LangKeys.trending,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextThemes.style7500.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
