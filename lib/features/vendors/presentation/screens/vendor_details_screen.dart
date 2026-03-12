import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/constants/image_paths.dart';
import 'package:recast_task/common/widgets/custom_header.dart';
import 'package:recast_task/features/products/presentation/widgets/vendor_products_section.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';
import 'package:recast_task/features/vendors/presentation/widgets/atmosphere_section.dart';

import '../widgets/vendor_info_section.dart';

class VendorDetailsScreen extends StatelessWidget {
  final VendorModel model;
  const VendorDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomHeader(
            imagePath: model.image,
            title: model.name,
            isTitleAppear: innerBoxIsScrolled,
            action: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(ImagePaths.profileImage, height: 32.sp, width: 32.sp, fit: BoxFit.contain),
            ),
          ),
        ],
        body: CustomScrollView(
          slivers: [
            VendorInfoSection(model: model),
            AtmosphereSection(model: model),
            ...VendorProductsSection(model: model).buildSlivers(),
          ],
        ),
      ),
    );
  }
}
