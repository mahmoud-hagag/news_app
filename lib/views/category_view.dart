import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListViewBuild.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            toolbarHeight: 120,
            elevation: 0,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: (category == 'Science' || category == 'Technology')
                        ? AssetImage(
                            'assets/images/$category.jpeg',
                          )
                        : AssetImage(
                            'assets/images/$category.jpg',
                          ),
                  ),
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                category,
                style: const TextStyle(color: Colors.white,fontSize: 32),
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
                iconSize: 30,
                icon: const Icon(Icons.home_outlined))),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [NewsListViewBuild(category: category)],
          ),
        ));
  }
}
