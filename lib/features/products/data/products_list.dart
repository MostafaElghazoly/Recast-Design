import 'package:recast_task/features/products/data/models/product_model.dart';
import 'package:recast_task/features/products/data/product_prep_list.dart';

final List<ProductModel> productsList = [
  ProductModel(
    image: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/air_fryer_roast_chicken_27390_16x9.jpg",
    name: "Burger",
    price: "25",
    description: "Delicious beef burger",
    isTrend: true,
    prepList: productPrepList.sublist(0, 3),
  ),

  ProductModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5okG0tz2dWr36k2p9gxbFmqoM4AeW1e3pPQ&s",
    name: "Pizza",
    price: "40",
    description: "Cheese pizza with tomato sauce",
    prepList: productPrepList.sublist(1, 4),
  ),

  ProductModel(
    image: "https://images.immediate.co.uk/production/volatile/sites/30/2022/08/Fish-Tacos-1337495.jpg",
    name: "Pasta",
    price: "30",
    description: "Italian pasta with creamy sauce",
    isTrend: true,
    prepList: productPrepList.sublist(2, 5),
  ),

  // product with NO prep info
  ProductModel(
    image: "https://img.freepik.com/free-photo/top-view-table-full-food_23-2149209253.jpg",
    name: "Grilled Chicken",
    price: "50",
    description: "Grilled chicken with spices",
  ),

  // another null prep
  ProductModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHlA21NiySUv0nKeiQ1zidk1S9EhHABTyRYg&s",
    name: "Salad",
    price: "20",
    description: "Fresh vegetable salad",
  ),
];
