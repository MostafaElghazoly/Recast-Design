import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/products/presentation/widgets/product_item.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class VendorProductsSection {
  final VendorModel model;
  VendorProductsSection({required this.model});
  List<Widget> buildSlivers() {
    final products = model.products;
    if (products == null || products.isEmpty) {
      return [const SliverToBoxAdapter(child: SizedBox())];
    }
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LangKeys.foodMenu, style: TextThemes.style11700.copyWith(color: AppColors.white.withOpacity(0.81))),
              SizedBox(height: 8.sp),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w, bottom: 20.h),
          child: MasonryGridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: products.length,
            crossAxisCount: 2,
            mainAxisSpacing: 4.sp,
            crossAxisSpacing: 4.sp,
            itemBuilder: (context, index) {
              return ProductItem(model: products[index]);
            },
          ),
        ),
      ),
    ];
  }
}
