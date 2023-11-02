import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        name: "Entertainment", imagePath: "assets/images/entertainment.jpg"),
    CategoryModel(name: "Health", imagePath: "assets/images/health.jpg"),
    CategoryModel(name: "Business", imagePath: "assets/images/business.jpg"),
    CategoryModel(name: "Sports", imagePath: "assets/images/sports.jpg"),
    CategoryModel(name: "Science", imagePath: "assets/images/science.jpeg"),
    CategoryModel(name: 'Technology', imagePath: 'assets/images/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
      physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
