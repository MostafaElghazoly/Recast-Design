import 'package:recast_task/features/products/data/models/product_prep_model.dart';

class ProductModel {
  String image;
  String name;
  String price;
  String description;
  List<ProductPrepModel>? prepList;
  bool isTrend;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    this.prepList,
    this.isTrend = false,
  });
}
