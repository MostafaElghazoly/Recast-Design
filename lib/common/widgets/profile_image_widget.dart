import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/app_constants.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.sp,
      width: 32.sp,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.sp),
        child: CustomNetworkImage(imageUrl: AppConstants.profileImage, fit: BoxFit.cover),
      ),
    );
  }
}
