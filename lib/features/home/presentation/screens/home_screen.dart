import 'package:flutter/material.dart';
import 'package:recast_task/features/home/presentation/widgets/home_banners_section.dart';
import 'package:recast_task/features/home/presentation/widgets/home_header.dart';
import 'package:recast_task/features/vendors/presentation/widgets/home_vendors_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [HomeHeader(), HomeBannersSection(), ...HomeVendorsSection.buildSlivers()]),
    );
  }
}
