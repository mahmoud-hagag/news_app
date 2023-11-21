import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webiew extends StatelessWidget{
  Webiew({super.key,});
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse(url1??'https://www.google.com/')) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 151, 64, 64),
        title: const Text(
          "Publisher",
          style: TextStyle(
            color: Color.fromARGB(255, 252, 251, 251),
          ),
        ),
      ),
      body: WebViewWidget(controller: controller)
    );
  }
}