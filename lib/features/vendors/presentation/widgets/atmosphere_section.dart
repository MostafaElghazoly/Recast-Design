import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/constants/image_paths.dart';
import '../../../../common/styles/text_themes.dart';

class AtmosphereSection extends StatelessWidget {
  final VendorModel model;
  const AtmosphereSection({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Text(LangKeys.atmosphere, style: TextThemes.style11700.copyWith(color: AppColors.white.withOpacity(0.81))),
          SizedBox(height: 8.sp),
          SizedBox(
            height: 240.sp,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: model.atmosphereImages.length,
              separatorBuilder: (_, __) => SizedBox(width: 9.sp),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16.sp),
                  child: CustomNetworkImage(
                    imageUrl: model.atmosphereImages[index],
                    height: 240.sp,
                    width: 223.sp,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16.sp),
        ]),
      ),
    );
  }
}
