import 'package:figma/model/categories_model.dart';

class Category {
  static List<CategoriesModel> list = [
    CategoriesModel(category: 'Hoodies', imageUrl: 'assets/hoodies.png'),
    CategoriesModel(category: 'Shorts', imageUrl: 'assets/shorts.png'),
    CategoriesModel(category: 'Shoes', imageUrl: 'assets/sneakers.png'),
    CategoriesModel(category: 'Bags', imageUrl: 'assets/bag.jpg'),
    CategoriesModel(
        category: 'Accessories', imageUrl: 'assets/accessories.png'),
  ];
}
