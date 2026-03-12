import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';

class StepperWidget extends StatelessWidget {
  final int selectedIndex, numberOfItems;
  final Color? selectedColor, unselectedColor;
  const StepperWidget({
    super.key,
    required this.selectedIndex,
    required this.numberOfItems,
    this.selectedColor,
    this.unselectedColor,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(numberOfItems, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.sp),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 5.sp,
            width: index == selectedIndex ? 12.sp : 5.sp,
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? selectedColor ?? AppColors.primary
                  : unselectedColor ?? AppColors.secondary,
              borderRadius: BorderRadius.circular(33.r),
            ),
          ),
        );
      }),
    );
  }
}
