import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';
import '../../../../common/widgets/gradient_text.dart';

class VendorInfoSection extends StatelessWidget {
  final VendorModel model;
  const VendorInfoSection({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          SizedBox(height: 8.sp),
          Text(LangKeys.lorem, style: TextThemes.style10700.copyWith(color: AppColors.white.withOpacity(0.8))),
          GradientText(title: model.name, maxLines: 2),
          SizedBox(height: 4.sp),
          Text(model.description, style: TextThemes.style10700.copyWith(color: AppColors.white.withOpacity(0.7))),
          SizedBox(height: 15.sp),
        ]),
      ),
    );
  }
}
