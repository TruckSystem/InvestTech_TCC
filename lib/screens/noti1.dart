import 'package:app_noticias/helper/List_Category_model.dart';
import 'package:app_noticias/helper/article_model.dart';
import 'package:app_noticias/helper/article_view.dart';
import 'package:app_noticias/helper/category_model.dart';
import 'package:app_noticias/helper/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class not1 extends StatefulWidget {


  @override
  State<not1> createState() => _not1State();
}

class _not1State extends State<not1> {

  Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }



  List<Category_model> categories = List<Category_model>();
  List<ArticleModel> articles = List<ArticleModel>();
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }


  void getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),

      ): SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BlogTileNews(
                        imgUrl: articles[index].urlToImage ?? "",
                        title: articles[index].title ?? "",
                        desc: articles[index].description ?? "",
                        content: articles[index].content ?? "",
                        url: articles[index].url,

                      );
                    }),
              )
            ],
          ),
        ),

      ),
    );


  }
}




class BlogTileNews extends StatelessWidget {
  final String imgUrl, title, desc, content, url;
  BlogTileNews({this.imgUrl, this.desc, this.title, this.content, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder:  (context) => Article_view(
              blogUrl: url,

            )
        ));
      },

      child: Container(
        margin: EdgeInsets.only(bottom: 16),

        child: Column(
          children: <Widget>[
            SizedBox(height: 8),
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(imgUrl)),
            SizedBox(height: 8),
            Text(title, style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 8),
            Text(desc, style: TextStyle(
                color: Colors.black54
            ),)

          ],
        ),
      ),
    );
  }
}