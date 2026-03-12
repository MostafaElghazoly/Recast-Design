import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/widgets/custom_network_image.dart';
import 'package:recast_task/features/home/data/banners_list.dart';

import '../../../../common/widgets/stepper_widget.dart';

class HomeBannersSection extends StatelessWidget {
  HomeBannersSection({super.key});
  final ValueNotifier<int> bannersNotifier = ValueNotifier(2);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: ValueListenableBuilder<int>(
          valueListenable: bannersNotifier,
          builder: (context, value, child) {
            return Column(
              children: [
                SizedBox(height: 12.sp),
                SizedBox(
                  height: 80.sp,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.9, initialPage: value),
                    itemCount: bannersList.length,
                    onPageChanged: (index) => bannersNotifier.value = index,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.sp),
                          child: CustomNetworkImage(imageUrl: bannersList[index], fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.sp),
                StepperWidget(selectedIndex: value, numberOfItems: bannersList.length),
              ],
            );
          },
        ),
      ),
    );
  }
}
