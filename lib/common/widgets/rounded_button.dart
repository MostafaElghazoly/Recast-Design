import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/app_colors.dart';
import '../styles/text_themes.dart';
import 'loader.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final bool enabled, loading;
  final VoidCallback? onTap;
  final Color? textColor, borderColor, color;
  final Widget? icon;
  final double? width, height;

  const RoundedButton({
    super.key,
    required this.title,
    this.loading = false,
    this.onTap,
    this.enabled = true,
    this.textColor,
    this.borderColor,
    this.color,
    this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    const radius = 10.0;
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        color: Colors.transparent,
        elevation: enabled ? 6 : 0,
        shadowColor: AppColors.primary.withOpacity(0.4),
        borderRadius: BorderRadius.circular(radius),
        child: ElevatedButton(
          onPressed: enabled ? onTap : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: _getButtonColor(),
            foregroundColor: AppColors.white,
            disabledBackgroundColor: AppColors.disabled,
            disabledForegroundColor: AppColors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
            ),
          ),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (loading)
          const Loader(color: AppColors.white)
        else ...[
          if (icon != null) ...[icon!, const SizedBox(width: 8)],
          Text(title, style: TextThemes.style14500.copyWith(color: textColor ?? AppColors.black)),
        ],
      ],
    );
  }

  Color _getButtonColor() {
    if (!enabled) return AppColors.disabled;
    return color ?? AppColors.primary;
  }
}
