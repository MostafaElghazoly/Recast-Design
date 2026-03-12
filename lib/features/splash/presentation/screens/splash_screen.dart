import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:recast_task/common/constants/lang_keys.dart';
import '../../../../common/navigation/navigation.dart';
import '../../../../common/navigation/routes.dart';
import '../../../../common/widgets/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigation().navigateAndRemoveUntil(routeName: AppRoutes.homeScreen),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HeartbeatProgressIndicator(
          child: GradientText(
            title: LangKeys.appName,
            textStyle: TextStyle(fontFamily: LangKeys.secondaryFont),
          ),
        ),
      ),
    );
  }
}
