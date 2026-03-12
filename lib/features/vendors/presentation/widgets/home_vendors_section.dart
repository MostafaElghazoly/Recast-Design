import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/features/vendors/data/vendors_list.dart';
import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';
import 'vendor_item.dart';

class HomeVendorsSection {
  static List<Widget> buildSlivers() {
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Text(LangKeys.vendors, style: TextThemes.style16700.copyWith(color: AppColors.white)),
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: vendorsList.length,
            (context, index) => Padding(
              padding: EdgeInsetsDirectional.only(bottom: 8.sp),
              child: VendorItem(model: vendorsList[index]),
            ),
          ),
        ),
      ),
    ];
  }
}
