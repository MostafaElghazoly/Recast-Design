import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class PreparationSection extends StatelessWidget {
  final ProductModel model;

  const PreparationSection({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final prepList = model.prepList;
    if (prepList == null || prepList.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox());
    }
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Text(LangKeys.preparation, style: TextThemes.style10700.copyWith(color: AppColors.white.withOpacity(0.7))),
          SizedBox(height: 9.sp),
          Wrap(
            spacing: 4.sp,
            runSpacing: 4.sp,
            children: prepList.map((prep) => _buildPreparationItem(title: "${prep.key}: ${prep.value}")).toList(),
          ),
        ]),
      ),
    );
  }

  Widget _buildPreparationItem({required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(6.sp),
        border: Border.all(color: AppColors.white.withOpacity(0.18)),
      ),
      child: Text(title, style: TextThemes.style10700.copyWith(color: AppColors.white)),
    );
  }
}
