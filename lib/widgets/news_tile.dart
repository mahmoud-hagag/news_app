import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          articleModel.image ??
              'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png',
          scale: 1.0,
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
        articleModel.subTitle ?? "no des",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
      ),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_rounded),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_outline_rounded),
          ),
        ],
      ),
    ]);
  }
}
