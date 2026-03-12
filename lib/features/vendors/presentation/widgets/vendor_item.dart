import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/styles/text_themes.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/navigation/navigation.dart';
import '../../../../common/navigation/routes.dart';
import '../../../../common/widgets/gradient_text.dart';

class VendorItem extends StatelessWidget {
  final VendorModel model;
  const VendorItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigation().navigateTo(routeName: AppRoutes.vendorDetailsScreen, arg: model),
      child: Container(
        height: 110.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          border: Border.all(color: AppColors.white.withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(8.sp)),
              child: CustomNetworkImage(
                imageUrl: model.image,
                height: 70.sp,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.sp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: GradientText(title: model.name, textStyle: TextThemes.style16700),
            ),
          ],
        ),
      ),
    );
  }
}
