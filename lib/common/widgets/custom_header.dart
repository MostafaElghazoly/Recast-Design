import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/styles/text_themes.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';
import 'package:recast_task/common/widgets/gradient_text.dart';
import '../styles/app_colors.dart';
import 'custom_back_button.dart';

class CustomHeader extends StatelessWidget {
  final String imagePath, title;
  final double? height;
  final Widget? action;
  final bool isTitleAppear;
  const CustomHeader({
    super.key,
    required this.imagePath,
    required this.title,
    this.height,
    this.action,
    this.isTitleAppear = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: height ?? 250.sp,
      backgroundColor: AppColors.black,
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsetsDirectional.only(start: 10.sp),
        child: CustomBackButton(),
      ),
      actions: [action ?? SizedBox()],
      title: isTitleAppear ? GradientText(title: title, textStyle: TextThemes.style14500) : null,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Stack(
          children: [
            CustomNetworkImage(imageUrl: imagePath, height: double.infinity, width: double.infinity, fit: BoxFit.cover),
            PositionedDirectional(
              bottom: 0.sp,
              start: 0.sp,
              end: 0.sp,
              child: Container(
                height: 47.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topCenter,
                    end: AlignmentDirectional.bottomCenter,
                    colors: [AppColors.black.withOpacity(0), AppColors.black],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
