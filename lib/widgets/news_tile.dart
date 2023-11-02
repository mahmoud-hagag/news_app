import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          articleModel.image ??
          'https://www.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej-1520x800.webp',
          fit: BoxFit.cover,
          height: 200,
          width: double.infinity,
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        articleModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        articleModel.subTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
      ),
    ]);
  }
}
