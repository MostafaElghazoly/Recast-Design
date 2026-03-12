import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_task/common/styles/app_colors.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width, height;
  final BoxFit? fit;

  const CustomNetworkImage({super.key, required this.imageUrl, this.width, this.height, this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => LinearProgressIndicator(
        color: AppColors.primary.withOpacity(0.5),
        backgroundColor: AppColors.secondary.withOpacity(0.5),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error_outline, size: 40.sp, color: AppColors.red4),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
