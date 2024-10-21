import 'dart:convert';

import 'package:http/http.dart' as http;

import 'article_model.dart';

class News{
  List <ArticleModel> news = [];
  Future<void> getNews() async{
    String url = "https://newsapi.org/v2/everything?q=fundos&from=2023-08-12&sortBy=publishedAt&apiKey=976111860d5f4ef48daf3492fcce312f";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(articleModel);
        }

      });
    }
  }


}

