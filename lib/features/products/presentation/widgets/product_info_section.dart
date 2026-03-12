import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';
import 'package:recast_task/features/products/presentation/widgets/trending_widget.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';
import '../../../../common/widgets/gradient_text.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductModel model;
  const ProductInfoSection({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LangKeys.mainCourse, style: TextThemes.style10700.copyWith(color: AppColors.white.withOpacity(0.6))),
              TrendingWidget(model: model),
            ],
          ),
          GradientText(title: model.name, textStyle: TextThemes.style18700),
          SizedBox(height: 4.sp),
          Text(model.description, style: TextThemes.style11500.copyWith(color: AppColors.white, letterSpacing: -0.05)),
          SizedBox(height: 16.sp),
        ]),
      ),
    );
  }
}
