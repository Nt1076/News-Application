import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Text("News ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
          Text("Quire",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w500),)
        ],
        
      ),
      centerTitle: true,
      elevation: 0,
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.blogUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}