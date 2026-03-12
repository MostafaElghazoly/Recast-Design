import '../../products/data/products_list.dart';
import 'models/vendor_model.dart';

final List<VendorModel> vendorsList = [
  VendorModel(
    image: "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg",
    name: "Sunset Cafe",
    description: "Cozy cafe with great coffee and desserts.",
    atmosphereImages: [
      "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg",
      "https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg",
    ],
    products: productsList.take(5).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
    name: "Italiano Restaurant",
    description: "Authentic Italian food with fresh ingredients.",
    atmosphereImages: [
      "https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg",
      "https://images.pexels.com/photos/262047/pexels-photo-262047.jpeg",
    ],
    products: productsList.skip(2).take(5).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg",
    name: "Burger Hub",
    description: "Best burgers and fast food in town.",
    atmosphereImages: [
      "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg",
      "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
    ],
    products: productsList.take(6).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/262047/pexels-photo-262047.jpeg",
    name: "Coffee Corner",
    description: "Specialty coffee and relaxing atmosphere.",
    atmosphereImages: [
      "https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg",
      "https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg",
    ],
    products: productsList.skip(3).take(4).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg",
    name: "Sushi Tokyo",
    description: "Fresh sushi and Japanese cuisine.",
    atmosphereImages: [
      "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg",
      "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg",
    ],
    products: productsList.skip(5).take(4).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
    name: "Steak House",
    description: "Premium steaks and grilled dishes.",
    atmosphereImages: [
      "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg",
      "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg",
    ],
    products: productsList.skip(6).take(4).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg",
    name: "Green Garden",
    description: "Healthy salads and organic meals.",
    atmosphereImages: [
      "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
      "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg",
    ],
    products: productsList.skip(4).take(5).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg",
    name: "Taco Fiesta",
    description: "Mexican street food and tacos.",
    atmosphereImages: [
      "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg",
      "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
    ],
    products: productsList.skip(8).take(4).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg",
    name: "Dessert Palace",
    description: "Cakes, donuts, and sweet treats.",
    atmosphereImages: [
      "https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg",
      "https://images.pexels.com/photos/374885/pexels-photo-374885.jpeg",
    ],
    products: productsList.skip(10).take(4).toList(),
  ),

  VendorModel(
    image: "https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg",
    name: "Breakfast Club",
    description: "Best breakfast and pancakes.",
    atmosphereImages: [
      "https://images.pexels.com/photos/6267/menu-restaurant-vintage-table.jpg",
      "https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg",
    ],
    products: productsList.skip(12).take(4).toList(),
  ),
];
