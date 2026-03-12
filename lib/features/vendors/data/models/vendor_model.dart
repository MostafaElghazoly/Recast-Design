import '../../../products/data/models/product_model.dart';
import '../../../products/data/products_list.dart';

class VendorModel {
  String image;
  String name;
  String description;
  List<String> atmosphereImages;
  List<ProductModel>? products;

  VendorModel({
    required this.image,
    required this.name,
    required this.description,
    required this.atmosphereImages,
    this.products,
  });
}
