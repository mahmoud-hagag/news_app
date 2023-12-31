import 'package:flutter/material.dart';
import 'package:news_app/widgets/caegory_list_view.dart';
import 'package:news_app/widgets/newsListViewBuild.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Top',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'News',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
             NewsListViewBuild(category: 'general',),
          ]),
        ));
  }
}
