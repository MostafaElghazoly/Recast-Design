import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/styles/app_colors.dart';
import 'package:recast_task/common/styles/text_themes.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';
import 'package:recast_task/features/products/presentation/widgets/product_price_widget.dart';
import 'package:recast_task/features/products/presentation/widgets/trending_widget.dart';
import '../../../../common/navigation/navigation.dart';
import '../../../../common/navigation/routes.dart';

class ProductItem extends StatelessWidget {
  final ProductModel model;
  const ProductItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigation().navigateTo(routeName: AppRoutes.productDetailsScreen, arg: model),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.sp),
                child: CustomNetworkImage(imageUrl: model.image, fit: BoxFit.cover),
              ),
              PositionedDirectional(
                start: 4.sp,
                top: 5.sp,
                child: TrendingWidget(model: model),
              ),
            ],
          ),
          Container(
            height: 52.sp,
            width: double.infinity,
            alignment: AlignmentDirectional.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(9.sp)),
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.grey40.withOpacity(0), AppColors.grey40.withOpacity(0.54), AppColors.grey40],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    model.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextThemes.style10500.copyWith(color: AppColors.white),
                  ),
                ),
                SizedBox(width: 4.sp),
                ProductPriceWidget(model: model),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
