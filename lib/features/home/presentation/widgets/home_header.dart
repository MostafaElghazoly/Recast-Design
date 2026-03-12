import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import 'package:recast_task/common/widgets/profile_image_widget.dart';

import '../../../../common/styles/app_colors.dart';
import '../../../../common/styles/text_themes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      forceElevated: true,
      elevation: 2,
      shadowColor: AppColors.primary,
      toolbarHeight: 50.sp,
      backgroundColor: AppColors.black,
      title: Row(
        children: [
          ProfileImageWidget(),
          SizedBox(width: 8.sp),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LangKeys.accountName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextThemes.style12700.copyWith(color: AppColors.white),
                ),
                Text(
                  LangKeys.accountEmail,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextThemes.style10500.copyWith(color: AppColors.grey32),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
