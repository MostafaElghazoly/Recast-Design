import 'package:flutter/material.dart';
import 'package:recast_task/common/navigation/routes.dart';
import 'package:recast_task/features/home/presentation/screens/home_screen.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';
import 'package:recast_task/features/products/presentation/screens/product_details_screen.dart';
import 'package:recast_task/features/splash/presentation/screens/splash_screen.dart';
import 'package:recast_task/features/vendors/data/models/vendor_model.dart';
import 'package:recast_task/features/vendors/presentation/screens/vendor_details_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case AppRoutes.homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case AppRoutes.vendorDetailsScreen:
      return MaterialPageRoute(builder: (context) => VendorDetailsScreen(model: settings.arguments as VendorModel));
    case AppRoutes.productDetailsScreen:
      return MaterialPageRoute(builder: (context) => ProductDetailsScreen(model: settings.arguments as ProductModel));
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(body: Center(child: Text("no path for ${settings.name}"))),
      );
  }
}
