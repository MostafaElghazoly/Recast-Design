import 'package:flutter/material.dart';
import 'package:recast_task/common/widgets/custom_header.dart';
import 'package:recast_task/features/products/data/models/product_model.dart';
import 'package:recast_task/features/products/presentation/widgets/preparation_section.dart';
import 'package:recast_task/features/products/presentation/widgets/product_info_section.dart';
import 'package:recast_task/features/products/presentation/widgets/product_nav_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomHeader(imagePath: model.image, title: model.name, isTitleAppear: innerBoxIsScrolled),
        ],
        body: CustomScrollView(
          slivers: [
            ProductInfoSection(model: model),
            PreparationSection(model: model),
          ],
        ),
      ),
      bottomNavigationBar: ProductNavBar(model: model),
    );
  }
}
