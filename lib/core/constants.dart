import 'package:nft_market/features/home/models/category_model.dart';
import 'package:nft_market/features/home/models/topseller_model.dart';
import 'package:nft_market/features/home/models/trending_model.dart';

class Constants {
  static List<CategoryModel> categories = [
    CategoryModel(image: 'assets/images/home/art.png', title: 'Art'),
    CategoryModel(image: 'assets/images/home/music.jpg', title: 'Music'),
    CategoryModel(
      image: 'assets/images/home/virtual_world.png',
      title: 'Virtual World',
    ),
  ];
  static List<TrendingModel> trending = [
    TrendingModel(image: 'assets/images/home/trending1.png', title: '3D Art'),
    TrendingModel(
      image: 'assets/images/home/trending2.png',
      title: 'Abstract Art',
    ),
    TrendingModel(
      image: 'assets/images/home/trending3.png',
      title: 'Portrait Art',
    ),
  ];

  static List<TopsellerModel> topseller = [
    TopsellerModel(
      imagePath: 'assets/images/home/topSeller1.png',
      title: 'pink',
    ),
    TopsellerModel(
      imagePath: 'assets/images/home/topSeller2.png',
      title: 'Mixed',
    ),
    TopsellerModel(
      imagePath: 'assets/images/home/topSeller3.png',
      title: 'waves',
    ),
  ];
}
