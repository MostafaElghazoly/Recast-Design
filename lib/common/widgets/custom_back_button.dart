import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/app_colors.dart';
import '../navigation/navigation.dart';

class CustomBackButton extends StatefulWidget {
  final void Function()? onTap;

  const CustomBackButton({super.key, this.onTap});

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap ?? Navigation().goBack(),
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            height: 48.sp,
            width: 48.sp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.4),
              border: Border.all(color: AppColors.black.withOpacity(0.3), width: 1.sp),
            ),
            child: Icon(Icons.arrow_back_rounded, color: AppColors.white, size: 20.sp),
          ),
        ),
      ),
    );
  }
}
