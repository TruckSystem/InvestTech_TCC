import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Article_view extends StatefulWidget {

  final String blogUrl;
  Article_view({this.blogUrl});
  @override
  State<Article_view> createState() => _Article_viewState();
}

class _Article_viewState extends State<Article_view> {

  final Completer<WebViewController> _completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Invest",
              style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.save),
            ),
          )
        ],

        backgroundColor: Colors.transparent,
        elevation: 0.3,
      ),
      body:  Container(

        child: WebView(
            initialUrl: 'https://www.tutorialkart.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: ((WebViewController webViewController){
            setState(() {
              _completer.complete(webViewController);
            });
           }
        ),
      ),
      )
    );
  }
}
